require 'open-uri'
class TestController < ApplicationController
	def save
		url = "http://192.168.0.105:8783"
		page = Nokogiri::HTML(open(url))

		data = page.search("p").inner_html
		data_edit = data.split(',')[1].split(':')[1].split('"')[1]
		
		test = Test.new
		test.text = data_edit
		test.save
		redirect_to "/test/index"
	end

	def index
		@test = Test.all
  end	
end
