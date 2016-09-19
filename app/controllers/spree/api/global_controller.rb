
module Spree
  module Api
    class GlobalController < Spree::Api::BaseController

      def index
				#@config = {
			#		"front_head_line"=>Spree::Config.front_head_line,
		#			"front_sub_head_line"=>Spree::Config.front_sub_head_line,
	#				"seller_head_line"=>Spree::Config.seller_head_line,
#					"seller_sub_head_line"=>Spree::Config.seller_sub_head_line,
#					"global_contact_email"=>Spree::Config.global_contact_email,
#					"global_phone"=>Spree::Config.global_phone,
#					"global_copyright"=>Spree::Config.global_copyright
#					}


				@config = {
					"front_head_line"=>"21st century watch buying and selling",
				   "front_sub_head_line"=>"Hand-inspected, certified, pre-owned watches",
					"seller_head_line"=>"The best way to sell your watch",
					"seller_sub_head_line"=>"We will inspect your watch and offer more than a dealer, guaranteed.",
					"global_contact_email"=>"contact@watches.co.uk",
					"global_phone"=>"000-000-000-000",
					"global_copyright"=>"© All rights reserved"
					}

        #@products = Spree::Taxon.find_by_name("Front view").active_products
        render :json => @config.to_json
				#@products = @products.distinct.page(params[:page]).per(params[:per_page])
        #expires_in 15.minutes, :public => true
        #headers['Surrogate-Control'] = "max-age=#{15.minutes}"
        #respond_with(@products)
      end
	  
   def cart_sync



				
          if params[:ids]
            @products = Spree::Product.where(id: params[:ids].split(",").flatten)

          end

          respond_with(@products)
   end

    end
  end
end


