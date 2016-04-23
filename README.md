Sourdough: example classes for network programming

To build:

	$ ./autogen.sh
	$ ./configure
	$ make

To run:

    $ cd datagrump
    $ sudo sysctl -w net.ipv4.ip_forward=1
    $ ./run-contest axschaubtdeitch

Results:

Part A (default code, window size = 20):

    Average capacity: 5.04 Mbits/s
    Average throughput: 3.31 Mbits/s (65.7% utilization)
    95th percentile per-packet queueing delay: 96 ms
    95th percentile signal delay: 277 ms

Part B (AIMD):

    Average capacity: 5.04 Mbits/s
    Average throughput: 4.90 Mbits/s (97.2% utilization)
    95th percentile per-packet queueing delay: 770 ms
    95th percentile signal delay: 1396 ms

Part C (loss based, targeting 200 ms):

    Average capacity: 5.04 Mbits/s
    Average throughput: 4.14 Mbits/s (82.1% utilization)
    95th percentile per-packet queueing delay: 117 ms
    95th percentile signal delay: 190 ms

