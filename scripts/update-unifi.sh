
#!/bin/bash
# if not root, run as root
if (($EUID != 0)); then
    sudo /home/dylan/unifi/update-unifi.sh
    exit
fi

sudo docker-compose down 

sudo docker-compose up --build

exit



