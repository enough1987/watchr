class RequestsController < ApplicationController
  def index
  end

  def countries


  			@countries = Spree::Country.all
			@state = Spree::State.all
			render :json => {:status => 2, 
			:countries => @countries, :state => @state, }.to_json 
        	return
  end
  
  

end
