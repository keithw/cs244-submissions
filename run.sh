#!/bin/sh

./autogen.sh && ./configure && make # (compile the contest code the usual way)
sudo sysctl -w net.ipv4.ip_forward=1 #(have to enable Linux's IP forwarding for mahimahi to work)
cd datagrump
./run-contest baller
cd -
