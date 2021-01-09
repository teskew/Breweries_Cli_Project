require 'pry'
class  API  #to get  and call the neccessary data
            #to creat a new object


     def self.get_data
        response = RestClient.get('https://api.openbrewerydb.org/breweries') 
        breweries_array = JSON.parse(response)
        breweries_array.each do |brewery|
        Brewery.new(brewery) 
        end
          
       end
 end