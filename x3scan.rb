#/usr/bin/ruby -w

# Xss Detection tool Powred by baha
require "open-uri"
require "net/http"
require "colorize"
system("cls")
print " 

 _     _  ___                             
 `.   /  /   \   ____   ___    ___  , __  
   \,'     _-'  (     .'   `  /   ` |'  `.
  ,'\       \   `--.  |      |    | |    |
 /   \   \___) \___.'  `._.' `.__/| /    |
                                          

 \n".red

list = ARGV[0]

if (ARGV.length < 1) then 
	def ban()
	puts "USAGE <./x3scan.rb sites.txt >"
	exit 
	end
	ban()
	 end
File.open("#{list}","r").each do |target|  

#Payloads encoded with  http encode
payload =["%22%3EXXTES%3C","%2F%22%3EXXTES%3C","%2522%253EXXTES%253C","%3Ca%20href%3D%22google.com%22%3EXXTES%3C%2Fa%3E"]
e = 1
payload.each do |i|


result = open("#{target}#{i}").read
response = Net::HTTP.get_response(URI.parse("#{target}#{i}"))
if (response.code != "200") then 
	puts " #{target} Maybe Vulnrable \n\n".yellow
	break
end
if (result[">XXTES<"].nil?) then
 puts " #{target}  Not vulnrable to xss"
else 
	puts "#{target} XSS DETECTED"
	break
  end
end
end
