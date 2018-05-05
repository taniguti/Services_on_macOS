
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

