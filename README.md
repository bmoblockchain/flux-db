# Flux Toolkit by BMO

#checkdb.sh - checks if db is running. Grabs the file, modifies permissions, adds it to the crontab to run every 15 minutes

`wget https://raw.githubusercontent.com/bmoblockchain/flux-repository/main/checkdb.sh && chmod 777 checkdb.sh && (crontab -l ; echo "*/10 * * * * /bin/bash /home/$USER/checkdb.sh") | crontab -`
