class CalcsController < ApplicationController
    def index
        
    end
    
    def plus
       num1 = params["calc"]["num1"].to_i
       num2 = params["calc"]["num2"].to_i
       @sum = num1 + num2
    end
end
