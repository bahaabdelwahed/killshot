#/usr/bin/ruby -w 

puts "Gems Instalation "
system("gem install colorize && gem install shodan && gem install rest-client")
system("sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev")
system("gem install nokogiri")
puts "Tools Instalation"
system("sudo apt-get install nmap && sudo apt-get install whatweb && sudo apt-get install host ")
system("git clone https://github.com/Und3rf10w/kali-anonsurf")
system("apt-get install tor")
system("cd kali-anonsurf")
system("./installer.sh")
