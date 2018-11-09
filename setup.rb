#/usr/bin/ruby -w 

puts "Gems Instalation "
system("gem install colorize && gem install net/http && gem install nokogiri && gem install shodan")
puts "Tools Instalation"
system("git clone https://github.com/Und3rf10w/kali-anonsurf")
system("apt-get install tor")
system("cd kali-anonsurf")
system("./installer.sh")
system("sudo apt-get install nmap && sudo apt-get install whatweb && sudo apt-get install host ")
