#!/bin/sh

apt-get update && apt-get upgrade;
apt install snap
wget https://dl.google.com/go/go1.16.5.linux-amd64.tar.gz;
sudo tar -xvf go1.14.6.linux-amd64.tar.gz;
sudo mv go /usr/local;
export GOROOT=/usr/local/go;
export GOPATH=$HOME/go;
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH;
sudo apt-get install python3;
sudo apt-get install python3-pip;
sudo apt-get install ruby;
sudo apt-get install screen;
sudo apt-get install git;
mkdir /root/.gf
mkdir /root/Tools;
mkdir /root/Recon;
dir=/root/Tools;
pip3 install jsbeautifier
git clone https://github.com/tomnomnom/hacks $dir/hacks;
git clone https://github.com/tomnomnom/gf $dir/gf;
go get -u github.com/tomnomnom/assetfinder;
go get github.com/tomnomnom/hacks/filter-resolved;
go get -u github.com/tomnomnom/hacks/gittrees;
go get github.com/tomnomnom/hacks/waybackurls;
go get -u github.com/tomnomnom/hacks/unisub;
go get -u github.com/tomnomnom/unfurl;
go get github.com/tomnomnom/burl;
go get -u github.com/tomnomnom/meg;
pip3 install requests;
pip3 install arjun;
GO111MODULE=on go get -u -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei;
git clone https://github.com/projectdiscovery/nuclei-templates $dir/nuclei-templates;
GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
GO111MODULE=on go get -u -v github.com/hahwul/dalfox;
go get github.com/ffuf/ffuf;
GO111MODULE=on go get -u -v github.com/lc/gau;
GO111MODULE=on go get -v github.com/projectdiscovery/interactsh/cmd/interactsh-client
GO111MODULE=on go get github.com/jaeles-project/jaeles
go get -u github.com/tomnomnom/gf;
cp -r /usr/local/go/src/github.com/tomnomnom/gf/examples ~/.gf/;
go get github.com/003random/getJS;
go get github.com/subfinder/goaltdns;
go get github.com/OJ/gobuster;
go get github.com/Emoe/kxss
go get -u github.com/sensepost/gowitness;
go get -u github.com/jaeles-project/gospider;
go get github.com/hakluke/hakrawler;
go get github.com/hakluke/hakrevdns;
go get -u github.com/tomnomnom/httprobe;
GO111MODULE=on go get -u -v github.com/projectdiscovery/httpx/cmd/httpx;
git clone https://github.com/MichaelStott/CRLF-Injection-Scanner $dir/CRLF-Injection-Scanner;
git clone https://github.com/D35m0nd142/LFISuite $dir/LFISuite;
git clone https://github.com/GerbenJavado/LinkFinder $dir/LinkFinder;
git clone https://github.com/pwn0sec/PwnXSS $dir/PwnXSS;
git clone https://github.com/swisskyrepo/SSRFmap $dir/SSRFmap;
git clone https://github.com/m4ll0k/SecretFinder $dir/SecretFinder;
git clone https://github.com/devanshbatham/ParamSpider $dir/ParamSpider;
git clone https://github.com/codingo/NoSQLMap $dir/NoSQLMap;
git clone https://github.com/s0md3v/XSStrike $dir/XSStrike;
GO111MODULE=on go get -u -v github.com/projectdiscovery/dnsprobe;
git clone https://github.com/maurosoria/dirsearch $dir/dirsearch;
git clone https://github.com/defparam/smuggler $dir/smuggler;
GO111MODULE=on go get -u -v github.com/projectdiscovery/shuffledns/cmd/shuffledns;
git clone https://github.com/1ndianl33t/Gf-Patterns;
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev;
snap install amass
apt install nmap
apt install jq
apt install tree
git clone --depth 1 https://github.com/danielmiessler/SecLists.git
mv /root/Gf-Patterns/*.json /root/.gf/;
rm -rf /root/Gf-Patterns;
wget https://raw.githubusercontent.com/devanshbatham/ParamSpider/master/gf_profiles/potential.json;
mv /root/potential.json /root/.gf/;
echo 'source /usr/local/go/src/github.com/tomnomnom/gf/gf-completion.bash' >> ~/.bashrc;
echo "
alias dirsearch='python3 /root/Tools/dirsearch/dirsearch.py -e php,asp,js,aspx,jsp,py,txt,conf,config,bak,backup,swp,old,db,sql -t 300 -u'
alias secretfinder='python3 /root/Tools/SecretFinder/SecretFinder.py'
" >> /root/.bashrc;
echo "
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$GOROOT/bin:$PATH
" >> /root/.bashrc;
cd;
#. ~/.bashrc;
echo " Don't Forget to run ' source ~/.bashrc ' after completion"
echo "Configure subfinder /root/.config/subfinder/config.yaml"
echo "Update key /root/arsenal/extractor.sh"
#kiterunner
cd /tmp;
wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz;
tar xvf /tmp/kiterunner_1.0.2_linux_amd64.tar.gz;
mv kr /usr/local/bin
