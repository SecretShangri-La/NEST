## NEST

You can quickly build a disposable OSINT environment using Blackarch Docker image as a base. This allows for basic CUI-based OSINT on any machine, as long as you have a usable Docker engine or Podman. In consideration of privacy, the official BlackArch mirror server in Sweden is set in the repository, so you can add any security tool.

### INSTALL
```shell
$ cd NEST
$ docker build -t nest:latest .
$ docker run -it --rm  nest:latest 
[ 81f02008e3e7 ~ ]$ 
```
