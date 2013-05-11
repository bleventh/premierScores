require 'rubygems'
require 'nokogiri'
require 'open-uri'

puts "Positon - Team - League Points"
puts "--------------------------------"
page = "http://www.premierleague.com/en-gb/matchday/league-table.html"
doc = Nokogiri::HTML(open(page))
doc.css(".club-row").each do |item|
  puts item.at_css('.col-pos').text + " " + item.at_css('.col-club').text + " " + item.at_css('.col-pts').text
puts "--------------------------------"
end
