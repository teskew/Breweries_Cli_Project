class Brewery

    @@all = []

    attr_accessor :name, :brewery_type, :city, :state, :phone, :website_url
    
    # def initialize(name, brewery_type, city,state, phone, website_url)
    #    @name = name
    #    @brewery_type = brewery_type
    #    @city = city
    #    @state = state
    #    @phone = phone
    #    @website_url = website_url
    #    save 
    # end 

         def initialize(brewery_hash)
            brewery_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
          
          end
          save
        end

    def save 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    # a method that accepts the breweries name, and finds the object
    # with that name dealiing to entire data it class method
    #to find the first 

    def self.find_brewery(brewery_name)
       self.all.find do |brewery|
           brewery.name == brewery_name    
             end 
    

     end
 end
