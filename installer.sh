#!/bin/bash

echo "Hope you have installed Go already in your system ;)  ."

echo "Installing Anew "
go get -v -u github.com/tomnomnom/anew
 echo "Installing qsreplace"
 go get -v -u github.com/tomnomnom/qsreplace
echo "Installing SubFinder"
GO111MODULE=auto go get -u -v github.com/projectdiscovery/subfinder/cmd/subfinder
echo "Install Hakrawler"
go get -v github.com/hakluke/hakrawler
echo "Installing GoSpider"
go get -v -u github.com/jaeles-project/gospider
echo "Installing Seclists"
git clone https://github.com/danielmiessler/SecLists.git
echo "Installing Nuclei"
GO111MODULE=auto go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
echo "Now cloning Nuclei-templates here for usage "
git clone -v https://github.com/projectdiscovery/nuclei-templates
echo "Installing Httpx"
GO111MODULE=auto go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
echo "Installing Chaos-Client"
GO111MODULE=on go get -u github.com/projectdiscovery/chaos-client/cmd/chaos
echo "Installed Chaos-Client Successfully , Now after completion of this Script enter the Chaos Key by export CHAOS_KEY='CHAOS_API_KEY'"
echo "Installing Github-search"
git clone https://github.com/gwen001/github-search
