#!/usr/bin/env bash

# Variables globales
export ANSIBLE_VERSION="5.1.0"

# Synchronisation des dépôts APT 
sudo apt -y update

# Installation de python
sudo apt -y install python3-pip

# Création de l'alias python -> python3
echo "alias python=python3" > ~/.bash_aliases
source ~/.bash_aliases

# Upgrade de pip
pip3 install --upgrade pip

# Installation de ansible
pip3 install ansible===$ANSIBLE_VERSION

# Application du nouveau fichier profile
source ~/.profile

# Installation des roles distants
ansible-galaxy install -r ansible/requirements.yml

# Lancement du playbook
ansible-playbook ansible/playbook.yml -i ansible/inventory.yml --limit localhost
