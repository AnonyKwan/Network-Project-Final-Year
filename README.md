# Network-Project-Final-Year

![alt text](https://github.com/AnonyKwan/Network-Project-Final-Year-/blob/master/Topology.png?raw=true "NetWork Topology")

# Routing Side
__Edge_Routers__
* Intrusion Prevention System (IPS)
* Dynamic Multipoint VPN (DMVPN)
* EIGRP Routing Protocol Over DMVPN
* EIGRP to Local Area Network (Hamilton Only)
* DHCP
* Local AAA
* Port Address Translation (PAT)


__Inside_Routers_Hamilton__
*  Hot Standby Router Protocol (HSRP) 
* EIGRP
* Local AAA

__Switches__
* Ethernet Channel (Link Aggregation)
* Local AAA
* Protected Port (LAN Switch Only)

# Firewall Side

__ASAv__
* EIGRP
* Failover
* Tons of ACL
* URL Filtering (NOT WORKED ON **HTTPS** TRAFFIC / Need Firepower Engine)

__Proxy Server(ASAv)__
* SSL-VPN (AnyConnect)


# Server Side

__Windowsn__
* Active Directory
* DHCP
* Deployment / Image Service
* Group Polocy
* Shadow Copies
* Resilio Sync
* DNS Service

__Linux Cluster (SLE15)__
* SMB Share
* Apache2
* Pacemaker (Cluster)
* Winbind (Connect AD)
* Resilio Sync


# Recommendations
~~~
Implement Server-Based AAA (TACACS+) rater than Local AAA

 ASAv ---> FortiGate

 VPN Proxy Server ---> Linux VM
 
 MOVE THE SERVER TO CLOUD
~~~


# Useful Links
> [Debian-HAClustersFromScratch](https://wiki.debian.org/Debian-HA/ClustersFromScratch)

> [Storage Protection and SBD](https://documentation.suse.com/sle-ha/12-SP4/html/SLE-HA-all/cha-ha-storage-protect.html)

> [Integrating a Linux Machine Into Windows Active Directory Domain](https://www.datasunrise.com/blog/professional-info/integrating-a-linux-machine-into-windows-active-directory-domain/)

> [How To Integrate Samba (File Sharing) Using Active Directory For Authentication](https://www.howtoforge.com/samba_active_directory)
