# Additinal periodic scripts
Scripts for periodic of OS X.

# set up
```
$ cd /usr/local/
$ sudo git clone https://github.com/taniguti/Service_on_macOS.git
$ cd Service_on_macOS/periodic
$ sudo ./setup
```

`setup` script will add following lines at end of /etc/periodic.conf.local.
- daily_timemachine_clients_state="YES"
- daily_my_timemachine_state="YES"
- daily_state_APNS="YES"
