module Spree
  module Api
    class CabinetController < Spree::Api::BaseController



    


   def index
   
   
   
   if Spree::Currency.find_by_char_code(params[:currency].upcase).nil?
		render :json => {:status => 500, :error => "currency fail"}.to_json	
		return
	else
		Spree.config do |config|
			config.currency = params[:currency].upcase
		end
	end
	
		@user = Spree::User.find_by( spree_api_key: params[:token] )

        if params[:token] == "guest"
				        render :json => {:status => 500, :error => "guest token"}.to_json
				        return
			        end
	
        if !@user.present?
             	#unauthorized
			        render :json => {:status => 3, :text => "user is not exist"}.to_json		  
         			return
        end


        @seller = Seller.where( user_id: @user.id )


        order_out = Array.new
        @order = Spree::Order.where( user_id: @user.id )

        @order.each do |a|
                
            if a.state != "cart"
                order_out << a
            end
        end

        @favorite_products = @user.favorite_products
        

        @out = [
        :user => @user, 
        :seller => @seller,
        :order => order_out,
        :favorites => @favorite_products 
        ] 

        respond_with( @out )
        #render :json => {:status => 2, 
		#	        :user => out}.to_json 

  end


end
end
end



