# VPN

vpndc is commandlet for VPN service of macOS.
It helps migrate from macOS server to macOS.
Additionally it sets VPN service on standard macOS.

# Install
Clone and create symlink to vpndc.
```
cd /usr/local/share
sudo git clone https://github.com/taniguti/Services_on_macOS.git
sudo ln -s /usr/local/share/Services_on_macOS/vpn/vpndc /usr/local/sbin/
```

# vpndc help
```
$ vpndc help
Configuration:
    vpndc [show-config|show] : Show current vpn configuration.
    vpndc [presharedkey|psk] : Configure preshared key.
    vpndc [client-address-range|car] : Configure IP address range for VPN clients
    vpndc [hostname] : Configure access hostname

Control:
    vpndc start : Start VPN service
    vpndc stop : Stop VPN service
    vpndc [status|fullstatus] : Show status of VPN service.
    vpndc restart : Restart VPN service
    vpndc reload : Reload configuration

Setup/Migrate/Deploy:
    vpndc migrate : Migrate VPN service from macOS Server to macOS. vpndc helps your VPN Service instaed of serveradmin.
    vpndc init : Setup VPN service for macOS initially.
    vpndc profile : Export configuration profile for VPN Service
```
You can get help of sub-command like as follows.
```
$ vpndc migrate help

Usage::
    migrate -i [-f] : Initial setup. for Standard macOS. '-f' will make reset and then initial setup.
    migrate -m [-f] : Migrate from macOS Server's VPN service. '-f' will as same as '-i -f'.
    migrate -h : Show this message.
```
