#!/bin/bash

echo "Hope you have installed Go already in your system ;)  ."

#install go
if [[ -z "$GOPATH" ]];then
echo "It looks like go is not installed, would you like to install it now"
PS3="Please select an option : "
choices=("yes" "no")
select choice in "${choices[@]}"; do
        case $choice in
                yes)

					echo "Installing Golang"
					wget https://dl.google.com/go/go1.13.4.linux-amd64.tar.gz
					sudo tar -xvf go1.13.4.linux-amd64.tar.gz
					sudo mv go /usr/local
					export GOROOT=/usr/local/go
					export GOPATH=$HOME/go
					export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
					echo 'export GOROOT=/usr/local/go' >> ~/.bash_profile
					echo 'export GOPATH=$HOME/go'	>> ~/.bash_profile			
					echo 'export PATH=$GOPATH/bin:$GOROOT/bin:$PATH' >> ~/.bash_profile	
					source ~/.bash_profile
					sleep 1
					break
					;;
				no)
					echo "Please install go and rerun this script"
					echo "Aborting installation..."
					exit 1
					;;
	esac	
done
fi
echo "Installing Anew "
  go get -v -u github.com/tomnomnom/anew
echo "Installing qsreplace"
  go get -v -u github.com/tomnomnom/qsreplace
echo "Installing SubFinder"
  GO111MODULE=auto go get -u -v github.com/projectdiscovery/subfinder/cmd/subfinder
echo "Install Hakrawler"
  go get -v github.com/hakluke/hakrawler
echo "Installing Github-search"
   git clone https://github.com/gwen001/github-search
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

