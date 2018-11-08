class CryptoCurrs
    def save
      page.css("td.currency-name").each do |x|
      array_name << x["data-sort"]
        end
      page.css("a.price").each do |y|
      array_value << y["data-usd"]
        end
    end
end
