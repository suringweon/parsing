require 'open-uri'
require 'nokogiri'

url = "http://192.168.0.105:8783"
page = Nokogiri::HTML(open(url))

data = page.search("p").inner_html
data_edit = data.split(',')[1].split(':')[1].split('"')[1]
puts data_edit
