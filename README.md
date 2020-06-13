# Network-Project-Final-Year-

![alt text](https://github.com/AnonyKwan/Network-Project-Final-Year-/blob/master/Topology.png?raw=true "NetWork Topology")

# Server Config

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
 ASAv ---> FortiGate

 VPN Proxy Server ---> Linux VM
~~~


# Useful Links
> [Debian-HAClustersFromScratch](https://wiki.debian.org/Debian-HA/ClustersFromScratch)

> [Storage Protection and SBD](https://documentation.suse.com/sle-ha/12-SP4/html/SLE-HA-all/cha-ha-storage-protect.html)

> [Integrating a Linux Machine Into Windows Active Directory Domain](https://www.datasunrise.com/blog/professional-info/integrating-a-linux-machine-into-windows-active-directory-domain/)

> [How To Integrate Samba (File Sharing) Using Active Directory For Authentication](https://www.howtoforge.com/samba_active_directory)
