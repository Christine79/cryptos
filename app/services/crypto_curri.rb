class CryptoCurri
def init
    require 'nokogiri'
    require 'open-uri'
    array_name=[]
    @page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
end
end
