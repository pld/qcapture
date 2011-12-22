require 'pcaplet'

class Caputure
  
  def initialize
    @network = Pcaplet.new('-i en1')
  end

  def listen
    for pkt in @network
      print "#{pkt.time} #{pkt}"
      if pkt.tcp?
        print " (#{pkt.tcp_data_len})"
        print " ack #{pkt.tcp_ack}" if pkt.tcp_ack?
        print " win #{pkt.tcp_win}"
      end
      if pkt.ip?
        print " (DF)" if pkt.ip_df?
      end
      print "\n"
    end
  end
end

Caputure.new.listen
