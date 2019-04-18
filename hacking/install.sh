# You need to have Docker and git installed before anything!

sudo apt install curl python python3 python3-pip nmap

# Installing bettercap over Docker
sudo docker pull bettercap/bettercap

echo "Now, with 'docker run -it --privileged --net=host bettercap/bettercap -h' you can start!"

# Installing metasploit over Docker

sudo docker pull metasploitframework/metasploit-framework

echo "Now, with 'docker run -it --privileged --net=host metasploitframework/metasploit-framework' you can start!"

# Installing empire over Docker

sudo docker pull empireproject/empire

echo "Now, with 'docker run -it --privileged --net=host empireproject/empire' you can start!"

# Cloning unicorn

git clone https://github.com/trustedsec/unicorn.git

# Cloning SQLMap

git clone https://github.com/sqlmapproject/sqlmap.git

# Downloading ZAProxy

curl https://github.com/zaproxy/zaproxy/releases/download/2.7.0/ZAP_2.7.0_Linux.tar.gz > ZAP_2.7.0_Linux.tar.gz && \
  tar -xzvf ZAP_2.7.0_Linux.tar.gz
