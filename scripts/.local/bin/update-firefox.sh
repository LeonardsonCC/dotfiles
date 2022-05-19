#!/bin/bash

cd /tmp
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2
sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/
sudo rm -rf /opt/firefox-developer/
sudo mv /opt/firefox*/ /opt/firefox-developer
rm /tmp/firefox-developer.tar.bz2
echo "Firefox atualizado"
