# os-x-periodic-tools
Scripts for periodic of OS X.

# set up
```
$ cd /usr/local/
$ sudo git clone https://github.com/taniguti/os-x-periodic-tools.git
$ sudo os-x-periodic-tools/setup
```

`setup` script will add following lines at end of /etc/periodic.conf.local.
- daily_timemachine_clients_state="YES"
- daily_my_timemachine_state="YES"
- daily_state_APNS="YES"
