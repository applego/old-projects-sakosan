class OmikujisController < ApplicationController
    def index
        @omikuji = ["大吉","中吉","小吉","大凶"]
    end
end
