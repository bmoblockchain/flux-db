# Flux Toolkit by BMO

**#checkdb.sh **- checks if db is running, if not reboots the host. Loop every 10 minutes

`wget https://raw.githubusercontent.com/bmoblockchain/flux-repository/main/checkdb.sh && chmod 777 checkdb.sh && (crontab -l ; echo "*/10 * * * * /bin/bash /home/$USER/checkdb.sh") | crontab -`

**#checkbench.sh **- checks every minute if fluxbench failed. If it did it will force rebench.

`testHere`
