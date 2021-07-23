# Homedir Utilities

Just a few scripts, wrappers and tools I've built or drug along with me from new laptop to laptop. Some of these are obvious by name. Here's descriptions of the others.

**bwtest** - a nice little (super fast), multi-session, bandwidth testing utility that will HAMMER the hell out of a server/target with big pipes. You just need to turn the chargen TCP/UDP (xinet.d) service on the target system. Be careful.. if on wifi, you can take down many wifi networks with this.

**socksit / socksit.cfg** - This is a SOCK5 per-client Proxy-VPN that allows you to route all traffic (including DNS queries) through a ssh proxy tunnel to pop out on the far side of the connection.  This gets you the best of both proxies and VPNs.  You can send individual web clients in different VPN-proxy directions around the net (e.g. one for work, one for banking, one for research, etc) without having something like VPN taking over your full networking stack.  Combine this with the "proxychains" client and you can even wrap non-proxy friendly apps (music streamers, traceroute, etc) through these individual proxies. You can also symlink to the script and giving the link different names, it can handle multiple (independent) .cfg files (one per proxy config). This script requires ssh(client) obviously, curl||elinks, and likes to have the figlet TXT banner app.

**sp** - superuser poweroff

**sr** - superuser poweroff

**wc0** - webcam0 test

**wc1** - webcam1 test
