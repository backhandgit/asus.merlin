#! /bin/sh

iptables -D YazFiFORWARD -i wl0.2 -p udp --dport 123 -m comment --comment "allow ntp" -j ACCEPT
iptables -I YazFiFORWARD -i wl0.2 -p udp --dport 123 -m comment --comment "allow ntp" -j ACCEPT

iptables -D YazFiFORWARD -i eth0 -o wl0.2 -p udp -m conntrack --ctstate ESTABLISHED,RELATED -m comment --comment "allow established" -j ACCEPT
iptables -I YazFiFORWARD -i eth0 -o wl0.2 -p udp -m conntrack --ctstate ESTABLISHED,RELATED -m comment --comment "allow established" -j ACCEPT

