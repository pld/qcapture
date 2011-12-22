######################################
#
# Install libpcap
#
######################################

echo -e "\nstart block install libpcap\n"

cd lib/libpcap-0.9.8
make clean
./configure
make
make install
cd ../..

echo -e "\nend block install libpcap\n"

######################################
#
# Install ruby-pcap
#
######################################

echo -e "\nstart block install ruby-pcap\n"

cd lib/pcap
make clean
ruby extconf.rb
make
make install
cd ../..

echo -e "\nend block install ruby-pcap\n"

echo -e "\nstart capture.rb\n"

ruby capture.rb

echo -e "\nend script\n"