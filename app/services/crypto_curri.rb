class CryptoCurri
def init
    require 'nokogiri'
    require 'open-uri'
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    page.css("td.currency-name").each do |x|
      crypto.name << x["data-sort"]
    end
    array_name
    page.css("a.price").each do |y|
        crypto.value << y["data-usd"]
    end
end
end
