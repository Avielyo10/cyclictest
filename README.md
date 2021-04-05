# cyclictest

[![Docker Repository on Quay](https://quay.io/repository/ayosef/cyclictest/status "Docker Repository on Quay")](https://quay.io/repository/ayosef/cyclictest)

Cyclictest accurately and repeatedly measures the difference between a thread's intended wake-up time and the time at which it actually wakes up in order to provide statistics about the system's latencies. It can measure latencies in real-time systems caused by the hardware, the firmware, and the operating system.

## Deployment
```bash
oc apply -f performanceprofile.yaml
# ... Wait for mcp to complete updating the nodes ...
oc apply -f pod.yaml
```

## Histogram
```bash
oc logs cyclictest > cyclictest_logs
csplit --digits=1 --quiet --prefix=histogram_log_ cyclictest_logs "/# Histogram/" "{0}"
```
`histogram_log_0`: Contains the cyclictest output  
`histogram_log_1`: Contains the cyclictest histogram

## Wiki
https://wiki.linuxfoundation.org/realtime/documentation/howto/tools/cyclictest/start
