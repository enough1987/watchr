module Spree
  module Api
    class FavoriteController < Spree::Api::BaseController


  #@#before_filter :authenticate_spree_user!
  before_filter :find_favorite_product, only: :destroy

def create
   
           if params[:token] == "guest"
				        render :json => {:status => 500, :error => "guest token"}.to_json
				        return
			        end
    favorite = current_api_user.favorites.new product_id: params[:id]
      if @success = favorite.save
        @message = "Product has been successfully marked as favorite"
      else
        @message = favorite.errors.full_messages.to_sentence
      end
      #respond_to do |format|
     #   format.js
      #end 
      @favorite_products = current_api_user.favorite_products
       render :json => {:status => 1, :text => "create #{params[:id]}"}.to_json	
		return
		 end

  def destroy
      
              if params[:token] == "guest"
				        render :json => {:status => 500, :error => "guest token"}.to_json
				        return
			        end
      
      if @favorite
        @success = @favorite.destroy
       
        
        
		
      end
      @favorite_products = current_api_user.favorite_products
      respond_with( @favorite_products )
  end
    
  def pack
  
  
          if params[:token] == "guest"
				        render :json => {:status => 500, :error => "guest token"}.to_json
				        return
			        end

   out = Hash.new
    favorites = params[:ids].split(",").flatten
    favorites.each do |a|
        favorite = current_api_user.favorites.new product_id: a
          if @success = favorite.save
            out["#{a}"]="true"
          else
            out["#{a}"]="false"
          end
    end
     
      @favorite_products = current_api_user.favorite_products
      respond_with( @favorite_products , out)
  end

    private
      def find_favorite_product
        @favorite = current_api_user.favorites.joins(:product).readonly(false).find_by(spree_products: { id: params[:id] })
      end
  end


end
end

