# to turn on
sudo docker compose up -d --build
http://localhost:8860

# to turn off
sudo docker compose down

# masuk container
sudo docker exec -it simple_node_server /bin/sh

# set up agen wazuh
wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.13.1-1_amd64.deb && sudo WAZUH_MANAGER='192.168.6.198' WAZUH_AGENT_NAME='nodejs1' dpkg -i ./wazuh-agent_4.13.1-1_amd64.deb

# Start the agent
sudo systemctl daemon-reload
sudo systemctl enable wazuh-agent
sudo systemctl start wazuh-agent

# atau
service wazuh-agent start
