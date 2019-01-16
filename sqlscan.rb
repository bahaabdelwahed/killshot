#/usr/bin/ruby -w
require "open-uri"
require "net/http"
require "colorize"
system("cls")
system("clear")
print " 
 _______         __ _______                   
|     __|.-----.|  |     __|.----.---.-.-----.
|__     ||  _  ||  |__     ||  __|  _  |     |
|_______||__   ||__|_______||____|___._|__|__|
            |__|                              

".red

list = ARGV[0]
if (ARGV.length < 1) then 
	puts "USAGE <./sqlscan.rb sites.txt >"
	exit 
	
	 end
File.open("#{list}","r").each do |target|  
	
	

payload =["'","/*","/>X"]
e = 1
payload.each do |i|

response = Net::HTTP.get_response(URI.parse("#{target}#{i}"))
if ("400" < response.code) then 
	print "#{target} "
	print " =========== > SQL DETECTED\n\n".red
	

elsif ("300"<response.code) and (response.code<"400") then 
print "#{target}"
print "=============> Redirect" 
end
$site = open("#{target}#{i}", 'User-Agent' => 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:2.0b8pre) Gecko/20101114 Firefox/4.0b8pre').read

 
if($site["You have an erro"].nil?) and ($site["SQL"].nil?) and ($site["MYSQL"].nil?)then 
	puts "#{target}"
	puts "Test N : #{e}"
	puts"=============== >[*] Not vulnrable\n\n".green
	e = e + 1
else 
	print "#{target} "
	print " =========== > [*] SQL DETECTED\n\n".red
	break
end


end
end

