class FormsController < ApplicationController
    def form_test 
        
    end
    
    def input_age
        @age = params["form_test"]["age"]
        @country = params["form_test"]["country"]
    end
end
