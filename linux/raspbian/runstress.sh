# https://core-electronics.com.au/tutorials/stress-testing-your-raspberry-pi.html
while true; do vcgencmd measure_clock arm; vcgencmd measure_temp; sleep 10; done& stress -c 4 -t 900s
