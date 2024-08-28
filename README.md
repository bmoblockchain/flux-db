# Flux Toolkit
Repository for Flux specific tools to improve overall stability of the nodes.

**#checkdb.sh** - checks if db is running, if not reboots the host. Loop every 10 minutes

```
wget https://raw.githubusercontent.com/en4ble1337/flux-repository/main/checkdb.sh && chmod 777 checkdb.sh && (crontab -l ; echo "*/10 * * * * /home/$USER/checkdb.sh") | crontab -
```

**#benchcheck.sh** - checks every minute if fluxbench failed. If it did it will force rebench.

```
wget https://raw.githubusercontent.com/en4ble1337/flux-repository/main/benchcheck.sh && chmod 777 benchcheck.sh && (crontab -l ; echo "* * * * * /home/$USER/benchcheck.sh") | crontab -
```

**#autoupdate_system.sh ** - simple bash script to update server OS, FluxOS and postpone reboot (if needed after updates) if node is not in maintenance window or queue window Using Crontab for autoupdates. Full credit to mike8643 = https://github.com/mike8643/fluxnode---system-auto-update

**Note: Do not run flux watchdog for it to work properly**
```
wget https://raw.githubusercontent.com/mike8643/fluxnode---system-auto-update/main/autoupdate_system.sh && chmod +x autoupdate_system.sh && mkdir crontab_logs && touch crontab_logs/autouptade_os.log && crontab -l | sed "\$a0 23 * * * /home/$USER/autoupdate_system.sh >> /home/$USER/crontab_logs/autouptade_os.log 2>&1" | crontab -
```

**#remove crontab - i.e checkdb.sh**

```
crontab -l | grep -v "/home/fluxadmin/checkdb.sh" | crontab -
```

