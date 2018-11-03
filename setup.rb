#/usr/bin/ruby -w 
puts "If you can install this script should be root."
system("sudo -s")
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
puts "Ruby Instalation"
system("sudo apt-get install ruby-full")
puts "Gems Instalation"
system("sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev")
system("gem install nokogiri")
system("gem install colorize")
puts "Tools Instalation"
system("sudo apt-get install nmap && sudo apt-get install whatweb && sudo apt-get install host")
system("sudo apt-get install -y dnsutils && sudo apt-get install wafw00f")
