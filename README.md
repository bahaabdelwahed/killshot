 # KILLSHOT  
A Penetration Testing Framework, Information gathering tool & Website Vulnerability Scanner

**Why KillShot** ?

You can use this tool to Spider your website and get important information and automatically gather information using 
whatweb-host-traceroute-dig-fierce-wafw00f or identify the CMS and find the vulnerability in your website using 
Cms Exploit Scanner & WebApp Vul Scanner Also You can use Killshot to automatically scan multiple types of scanning tools such as nmap and unicorn. And With this tool, You can Generate PHP Simple Backdoors upload it manually and connect to the target using Killshot.

This Tool Bearing A simple Ruby Fuzzer Tested on VULSERV.exe And Linux Log clear script To change the content of login paths.
 Spider can help you to find the parameter of the site and scan XSS and SQL.
 
 ![killshot-logo_v1](https://user-images.githubusercontent.com/19738278/47605704-7eaab180-d9f9-11e8-97cc-74fad3dc152c.png)
 
   
   
   
   # Help option

![help](https://user-images.githubusercontent.com/19738278/48301246-f6dda080-e4ea-11e8-9def-5785fce2653a.JPG)

  
# Use Shodan By targ option     
   CreateAccount Here [Register](https://account.shodan.io/register) and get Your aip [Shodan AIP](https://account.shodan.io/) And Add your shodan AIP to aip.txt
    < only your aip should be show in the aip.txt >
   Use targ to search about Vulnrable Targets in shodan databases
   
   ![search](https://user-images.githubusercontent.com/19738278/48301291-ed086d00-e4eb-11e8-905c-86b9807e3234.JPG)

  Use targ To scan Ip of servers fast with shodan 
  
  ![scan](https://user-images.githubusercontent.com/19738278/48301305-31940880-e4ec-11e8-8a74-35d65b063930.JPG)

    
# Menu Site
    {0} Spider 
    {1} Web technology 
    {2} WebApp Vul Scanner
    {3} Port Scanner
    {4} CMS Scanner
    {5} Fuzzers 
    {6} Cms Exploit Scanner
    {7} Backdoor Generation
    {8} Linux Log Clear
     
# WebApp Vul Scanner
    {1} Xss scanner
    {2} Sql Scanner
    {3} Tomcat RCE

# Port Scanner
     [0] Nmap Scan
     [1] Unicorn Scan
    Nmap Scan 
     [2] Nmap Os Scan 
     [3] Nmap TCP Scan
     [4] Nmap UDB Scan 
     [5] Nmap All scan
     [6] Nmap Http Option Scan 
     [7] Nmap Live target In Network
    Unicorn Scan
    [8] Services OS 
    [9] TCP SYN Scan on a whole network 
    [01] UDP scan on the whole network
      
# Backdoor Generation 
     {1} Generate Shell
     {2} Connect Shell
     
# USAGE 
    1 ----- Help Command 
    [site]  MAKE YOUR TARGET
    [help] show this MESSAGE
    [exit] show this MESSAGE
    2 ------ Site command 
    Put your target www.example.com
    without the http
    
    
    
# Linux Setup 

    git clone https://github.com/bahaabdelwahed/killshot
    cd killshot
    ruby setup.rb (if setup show any error just try to install the gems/tool manual )
    ruby killshot.rb
# Windows Setup
    Download ruby for windows ==> https://rubyinstaller.org/downloads/
    Download Cmder here       ==> http://cmder.net/
    Enjoy !
https://www.youtube.com/watch?v=SEGRh86J6vk

Use KillShot To Detect and Scan CMS vulnerabilities (Joomla && Wordpress) And Scan For XSS And SQL

https://www.youtube.com/watch?v=QPF-rppYSOY
