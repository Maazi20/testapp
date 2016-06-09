require 'mechanize'


mechanize = Mechanize.new

page = mechanize.get('http://www.realtor.com/realestateandhomes-search/Colorado-Springs_CO')

html = Nokogiri::HTML(page.body)



html.xpath('//div[@class="srp-multi-wrapper"]').each do |row|
	puts "*"*30
  row.xpath('./div[@class="js-record-user-activity js-navigate-to srp-item  "]').each do |row2|
  	obj = row2.xpath('./div/div[@class="srp-item-body"]/ul/li[@class="srp-item-address ellipsis"]/a')
  	puts obj.text
  	puts ("---------------------------------------------------------------------------------------")
  end
end

# puts form.field_with(id:  "email").value 

# form.field_with(id:  "pass").value = "C.ROnaldo123"

# puts form.field_with(id:  "pass").value 

# # buttons = form.buttons_with(id:  "loginbutton")

# result = form.submit

# puts result.body