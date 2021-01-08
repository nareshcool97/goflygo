class HomeController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:index]
    
    def index
        @welcome = "Hello, Welcome" 
    end
end