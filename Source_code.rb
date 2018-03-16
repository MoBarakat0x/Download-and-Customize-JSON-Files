#!/usr/bin/ruby
#This tool allows you to Download and customize the JSON Data from a website 
require 'rubygems'
require 'json'
require 'pp' #Ruby's prettyprint for formatting the Output
require 'httparty'  # HTTP library called HTTParty 
#Read More https://gist.github.com/pwightman/4036236
#Official Repository https://github.com/jnunemaker/httparty
puts " Welcome, Just Paste the website URI"
uri=gets.chomp 
Json_Data = HTTParty.get(uri) 
Parsed_File = File.new("json_file.json", "w") #Creating a new file to hold the  Downloaded JSON Data 
File.open("json_file.json", 'w') {|f| f.write(Json_Data) } #writing the JSON data into the file

json_file = File.read('json_file.json') #open the JSON File
Parsed_Data = JSON.parse('json_file') #Parsing the JSON Data
Parsed_File = File.new("Parsed.txt", "w") #Creating a new file to hold the output 
File.open("Parsed.txt", 'w') {|f| f.write(Parsed_Data) } #writing the Parsed data into the file 
