class CryptoCurrp
  def perform
    lapage.css("td.currency-name").each do |x|
      cryptos.name << x["data-sort"]
    end
    array_name
    lapage.css("a.price").each do |y|
        cryptos.value << y["data-usd"]
    end

  end
end
