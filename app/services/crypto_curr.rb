class CryptoCurr
  require 'nokogiri'
  require 'open-uri'
  def init
      @page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

      array_name=[]
      @page.css("td.currency-name").each do |x|
       array_name << x["data-sort"]
      end
      array_name
      array_value=[]
      @page.css("a.price").each do |y|
          array_value << y["data-usd"]
      end
      array_value
#      puts Hash[crypto_name.zip(crypto_value)]
      pp Hash[array_name.zip(array_value)]
      kikihash = Hash[array_name.zip(array_value)]
      kikihash.each do |k|
          pp "voici: #{k}"
          @crypto = Crypto.new(crypto_params)

          respond_to do |format|
            if @crypto.save
              format.html { redirect_to @crypto, notice: 'crypto was successfully created.' }
              format.json { render :show, status: :created, location: @crypto }
            else
              format.html { render :new }
              format.json { render json: @crypto.errors, status: :unprocessable_entity }
            end
          end

      end

  end

  #currency_list = [“id_name”, “name”]
  #puts crypto_name
  def perform
  end

  #puts crypto_value
  def save

  end
end
