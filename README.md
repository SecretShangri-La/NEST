## NEST
You can quickly build a disposable OSINT environment using Blackarch Docker image as a base. This allows for basic CUI-based OSINT on any machine, as long as you have a usable Docker engine or Podman. In consideration of privacy, the official BlackArch mirror server in Sweden is set in the repository, so you can add any security tool.

### INSTALL
fast install
```shell
$ docker run -it --rm ghcr.io/secretshangri-la/nest:1.0
```
manually install
```shell
$ cd NEST
$ docker build -t nest:latest .
$ docker run -it --rm  nest:latest 
[ 81f02008e3e7 ~ ]$ 
```

### OSINT Tools
###### OSINT
```
buster          : Find emails of a person and return info associated with them.
cardpwn         : OSINT Tool to find Breached Credit Cards Information.
instagramosint  : An Instagram Open Source Intelligence Tool.
osi.ig          : Instagram OSINT Tool gets a range of information from an Instagram account.
twint           : An advanced Twitter scraping & OSINT tool written in Python that doesn't use Twitter's API, allowing you to scrape a user's followers, following, Tweets and more while evading most API limitations.
phoneinfoga     : Information gathering & OSINT framework for phone numbers.
```
###### Defensive
```
tor         : Requests a server called an onion router to build a secret line and realizes anonymous overlay network communication. 
proxychains : A hook preloader that allows to redirect TCP traffic of existing dynamically linked programs through one or more SOCKS or HTTP proxies
tor-router  : A tool that allow you to make TOR your default gateway and send all internet connections under TOR (as transparent proxy) for increase privacy/anonymity without extra unnecessary code.
nipe        : A script to make Tor Network your default gateway.
torsocks    : Wrapper to safely torify applications
```
### Using Tor
Tor uses the obfs4 bridge, which is hard-coded into torrc by default. Be sure to start Tor by typing `tor &` if you want to use Tor in the whole NEST container, you can enable the Tor communication environment in the whole container by typing `. torsocks on` after the above command.