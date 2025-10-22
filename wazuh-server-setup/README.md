# Wazuh Docker Deployment (Single Node)

Step-by-step guide to deploy **Wazuh 4.13.1** using Docker.

## Download & Extract

wget https://github.com/wazuh/wazuh-docker/archive/refs/tags/v4.13.1.zip  
unzip 4.13.1.zip  
sudo chmod 777 -R ./wazuh-docker-4.13.1  
cd /wazuh-docker-4.13.1/single-node

## System Configuration

sudo sysctl -w vm.max_map_count=262144  
sudo rm -rf ./config/wazuh_indexer_ssl_certs  
mkdir -p ./config/wazuh_indexer_ssl_certs

## Generate SSL Certificates

sudo docker compose -f generate-indexer-certs.yml run --rm generator  
sudo chmod 777 -R ./

## Start Wazuh Stack

sudo docker compose up -d

## Access the Dashboard

https://localhost/

## Default credentials

Username: admin  
Password: SecretPassword
