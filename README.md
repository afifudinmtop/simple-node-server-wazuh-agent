# Wazuh Agent Setup (Inside Docker Container)

## Start the Container

sudo docker compose up -d --build

## Access your app at:

http://localhost:8860

# Access the Container Shell

sudo docker exec -it simple_node_server /bin/sh

# Install and Configure the Wazuh Agent

wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.13.1-1_amd64.deb && sudo WAZUH_MANAGER='192.168.6.198' WAZUH_AGENT_NAME='nodejs1' dpkg -i ./wazuh-agent_4.13.1-1_amd64.deb

# Start the Wazuh Agent

Option 1 (recommended):
sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent

Option 2 (alternative):
service wazuh-agent start
