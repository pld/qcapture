######################################
#
# Uninstall libpcap
#
######################################

echo -e "\nstart block uninstall libpcap\n"

cd lib/libpcap-0.9.8
make uninstall
make distclean
cd ../..

echo -e "\nend block uninstall libpcap\n"

######################################
#
# Uninstall ruby-pcap
#
######################################

echo -e "\nstart block uninstall ruby-pcap\n"

cd lib/pcap
make distclean
cd ../..

echo -e "\nend block uninstall ruby-pcap\n"