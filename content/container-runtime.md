---
date: August 03, 2023
---

# Container runtime

## Containerd

- Relies on runc

- Supports CRI via (built-in) plugin

- Very common. Lots have experience with it

- Customer support from Docker

- Allegedly the fastest runtime out there.

## CRI-O

- Relies on runc

- Native support for CRI

- A little more secure: removes some excessive capabilities, e.g `NET_RAW` & `SYS_CHROOT`

- A bit more lightweight, though difficult to find benchmarks on this

- Customer support from RedHat

- Major & minor version matches Kubernetes, so potentially fewer integration issues
