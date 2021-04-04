# cyclictest

[![Docker Repository on Quay](https://quay.io/repository/ayosef/cyclictest/status "Docker Repository on Quay")](https://quay.io/repository/ayosef/cyclictest)

Cyclictest accurately and repeatedly measures the difference between a thread's intended wake-up time and the time at which it actually wakes up in order to provide statistics about the system's latencies. It can measure latencies in real-time systems caused by the hardware, the firmware, and the operating system.

## Deployment
```bash
oc adm policy add-scc-to-user privileged -z default -n openshift-monitoring
oc apply -f daemonset.yaml
```

## Wiki
https://wiki.linuxfoundation.org/realtime/documentation/howto/tools/cyclictest/start
