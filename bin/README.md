# Homedir Utilities

Just a few scripts, wrappers and tools I've built or drug along with me from new laptop to laptop. Some of these are obvious by name. Here's descriptions of the others.

**bwtest** - a nice little (super fast), multi-session, bandwidth testing utility that will HAMMER the hell out of a server/target with big pipes. You just need to turn the chargen TCP/UDP (xinet.d) service on the target system. Be careful.. if on wifi, you can take down many wifi networks with this.

**socksit / socksit.cfg** - This is a SOCK5 per-client Proxy-VPN that allows you to route all traffic (including DNS queries) through a ssh proxy tunnel to pop out on the far side of the connection to a personal cloud-VM or physical work machine.  This gets you the best of both proxies and VPNs.  You can send individual web clients in different VPN-proxy directions around the net (e.g. one for work, one for banking, one for research, etc) without having something like VPN taking over your full networking stack.  I recommend using this (in the browser) along with a proxy-switching plugin such as TunnelSwitch for rapid switching between proxy end points. You can also symlink to the script and giving the link different names, so that it can handle multiple (independent) .cfg files (one per proxy config, ssh keys, etc). Combine this with the "proxychains" client and you can even wrap non-proxy friendly apps (music streamers, traceroute, etc) through these individual proxies.This script requires ssh(client) obviously, curl||elinks, and likes to have the figlet TXT banner app.

**hbban** - My HID (Host Intrusion Detection) Baseline Binary Anomaly Notification scripts.  Intended for public webservers (RPM based), it uses RPM's powerful ability of tracking the MD5 fingerprints of every file on the filesystem (installed by RPM). I use this to take a baseline of all installed package files, and watch the system for any system binary anomalies (of the past six months), and if anything bad is detected, will SMS txt you.  I came up with it to help Rackspace customers secure and track the security of their own systems.  Works like a charm.  If anyone wants to extend it to do the same for apt/dpkg files, that would be cool.. Just keep in in bash. It's worked this way for 20yrs. 

**sp** - superuser poweroff

**sr** - superuser poweroff

**wc0** - webcam0 test

**wc1** - webcam1 test
