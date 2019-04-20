# You need to have Docker and git installed before anything!
sudo apt install curl python python3 python3-pip nmap

# Installing bettercap over Docker
sudo docker pull bettercap/bettercap
echo "Now, with 'docker run -it --privileged --network=host bettercap/bettercap -h' you can start!"

# Installing metasploit over Docker
sudo docker pull metasploitframework/metasploit-framework
echo "Now, with 'docker run -it --privileged --network=host metasploitframework/metasploit-framework bash' you can start!"

# Installing empire over Docker
sudo docker pull empireproject/empire
echo "Now, with 'docker run -it --privileged --network=host empireproject/empire bash' you can start!"

# Installing wifirock over Docker
sudo docker pull andresmontoyain/wifirock
echo "Now, with 'docker run -it --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:ro --privileged --network=host --name wifirock andresmontoyain/wifirock bash' you can start!"

# Cloning unicorn
git clone https://github.com/trustedsec/unicorn.git

# Cloning SQLMap
git clone https://github.com/sqlmapproject/sqlmap.git

# Installing ZAProxy
curl https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2_7_0_unix.sh && \
  chmod +x ZAP_2_7_0_unix.sh && ./ZAP_2_7_0_unix.sh
