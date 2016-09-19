class MsendController < ApplicationController

skip_before_filter :verify_authenticity_token
    def index 
         
    @out_message = Spree::Msend.create( 
	name: params[:name], 
	last_name: params[:last_name], 
	message: params[:message], 
	phone: params[:phone], 
	email: params[:email]
	)
       Msend.contact( @out_message ).deliver
       render :json => { :status => 2 }.to_json
    end
    
    

end
