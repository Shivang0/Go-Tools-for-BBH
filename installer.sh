#!/bin/bash
echo "Hope you have installed Go already in your system ;)  ."


echo "Installing Anew "
  go get install github.com/tomnomnom/anew@latest
echo "Installing qsreplace"
  go get install github.com/tomnomnom/qsreplace@latest
echo "Installing SubFinder"
  GO111MODULE=auto go get -u -v github.com/projectdiscovery/subfinder/cmd/subfinder
echo "Install Hakrawler"
  go install github.com/hakluke/hakrawler@latest
echo "Installing Github-search"
   git clone https://github.com/gwen001/github-search
echo "Installing WaybackUrls"
   go install github.com/tomnomnom/waybackurls@latest
echo "Installing Gf"
   go install github.com/tomnomnom/gf@latest
echo "Installing Amass"
   go install github.com/OWASP/Amass@latest
   echo "Although Amass is installed set the config.ini file to use it to maximum extent ;) ."
echo "Installing GoSpider"
  go install github.com/jaeles-project/gospider@latest
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

