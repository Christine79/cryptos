require 'nokogiri'
require 'open-uri'
def init
    @page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    array_name
end
#currency_list = [“id_name”, “name”]
#puts crypto_name
def perform
  array_name=[]
  @page.css("td.currency-name").each do |x|
   array_name << x["data-sort"]
  end
  array_value=[]
  @page.css("a.price").each do |y|
      array_value << y["data-usd"]
  end
  array_value
end

#puts crypto_value
def save
 puts Hash[crypto_name.zip(crypto_value)]
end
