require 'pry'
class  CLI
    #communicationg with user and data
    # an entryway method 

    def start 
         # API.get_data                             
        puts ""
        puts "***************************************"
        puts "     WELLCOME TO BREWERY CO"
        puts "         DATA BASE     "
        puts "**************************************"
        puts ""           
        puts " Hello! Can I help you? What  is your name please :"
        puts ""

         API.get_data
     
       greet(user_input)

    end 
    

    def user_input
        gets.strip
    end 

    def greet(name)
        puts " Hello #{name}, would you like  to list the Breweries Co we have?"
        puts ""
        puts "'yes' to display the list 'no' to exit "
        menu
    end 
            # print to out a list of all breweries ""
    def breweries_list 
        Brewery.all.each.with_index(1) do |brewery, i|
            puts ""
            puts ""
            puts "#{i}. #{brewery.name}"
        end 
        brewery_selection
    end 
           
     

    def goodbye
        puts "Hopefully you'll come back! But bye for now!" 
        puts ""
    end 

    def  invalid
        puts "Ooops that doesnt seem valid, try again?"
        menu
    end 

    

    def brewery_selection
        puts ""
        puts "Please make a select by index or input the  name for more info"
        puts ""
        
            selection = user_input   
            
            brewery = Brewery.find_brewery(selection)
            brewery_details(brewery)
        
    end
    
      
        def brewery_details(brewery)

            puts ""
            puts ""
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts "Name:                #{brewery.name}"
            puts "Brewery type         #{brewery.brewery_type}"
            puts "City                 #{brewery.city}"
            puts "State Manfictured:   #{brewery.state}"
            puts "The co phone No      #{brewery.phone}   "
            puts " The web_sight       #{brewery.website_url}   "                 
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
            puts ""
            puts "do want to select another brewery co  'yes' to contnue 'no' to exit "
            menu
        end

      def menu 
        
               
            selection = user_input
            if selection == "y" || selection == "yes"
         #print the brewerie list
                breweries_list
            
            
                 menu
        
            elsif selection == "no" ||  selection == "exit"
                goodbye
             #message to exit
            else
                invalid
                menu
                #make the user select again
            end
        end
end
       