class CryptoCurr
  require 'nokogiri'
  require 'open-uri'
  def crypto_name
      array_name=[]
      page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
      page.css("td.currency-name").each do |x|
      array_name << x["data-sort"]
    end
    array_name
  end
  currency_list = ['name', 'value']
  #puts crypto_name
  def crypto_value
      array_value=[]
      page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
      page.css("a.price").each do |y|
          array_value << y["data-usd"]
      end
      array_value
  end
  #puts crypto_value
  # puts Hash[currency_list.name, currency_list.value]

  currency_list.each do |curr|
    puts "voici: !!!  #{curr.name}   #{curr.value} toc! "
  end
end
