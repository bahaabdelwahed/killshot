#/usr/bin/ruby -w 

puts "Build dependencies installation"
system("sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev")

puts "Gems Installation"
system("gem install -g")

puts "Tools Instalation"
system("sudo apt-get install nmap whatweb host tor")
system("git clone https://github.com/Und3rf10w/kali-anonsurf")
system("cd kali-anonsurf && ./installer.sh")
