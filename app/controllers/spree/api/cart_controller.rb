module Spree
  module Api
    class CartController < Spree::Api::BaseController
		require 'net/http'


      skip_before_action :check_for_user_or_api_key, only: :apply_coupon_code
      skip_before_action :authenticate_user, only: :apply_coupon_code

      before_action :find_order, except: [:create, :mine, :current, :index, :update]

      # Dynamically defines our stores checkout steps to ensure we check authorization on each step.
      Spree::Order.checkout_steps.keys.each do |step|
        define_method step do
          find_order
          authorize! :update, @order, params[:token]
        end
      end

		
      def index

			#проверка курса
			if Spree::Currency.find_by_char_code(params[:currency].upcase).nil?
				render :json => {:status => 500, :error => "currency fail"}.to_json	
				return
			else
				Spree.config do |config|
					config.currency = params[:currency].upcase
				end
			end
		
		
		
		
		
		
		if params[:status] == "payments"
				
				
				@paylist = Array.new
				@payment = Spree::PaymentMethod.where(currency: params[:currency].upcase)

				@payment.each do |i|
               paymentq = Hash.new
					if i.active == false
						next					
					end
						paymentq["id"] = i.id
						paymentq["name"] = i.name
						paymentq["decription"] = i.description
						paymentq["type"] = i.payment_type
						@paylist.push(paymentq) 
				end

				render :json => {:status => 2, :payment_methods => @paylist, :paymenhods => @payment}.to_json		  
 			return
		end



		#проверка гостевого токена
		if params[:token] == "guest"
			render :json => {:status => 500, :error => "guest token"}.to_json
			return
		end





		authorize! :create, Spree::Order

		@user = Spree::User.find_by( spree_api_key: params[:token] )
		@order = Spree::Order.where( user_id: @user.id ).order(created_at: :desc).take(1)
		@order = @order[0]
     

		
		if params[:status] == "checkout"

				if !@order.state == "cart"
							
				render :json => { :error=> "No order for payment", 
				:status => 422 , :order => @order }.to_json
					return
				end
			
			@order.ship_address_id = @user.ship_address_id
			@order.bill_address_id = @user.ship_address_id
			@order.shipping_method_id = 1 #сюда подключается шипмемнт методо
			@order.state = "payment"
			@order.save

			send = Hash.new		
					port = 80
					host = "localhost1"
					path = "/api/checkouts/#{@order.number}/?token=#{params[:token]}"
					req = Net::HTTP::Put.new(path, initheader = { 'Content-Type' => 'application/json'})
					req.body = send.to_json
					
					req.body = { "order"=>
							{"payments_attributes"=>[
							{"payment_method_id"=>params[:payment_method_id]}
							]}, 
						"payment_source"=>{
							"#{params[:payment_method_id]}" =>{
								"number"=>params[:number], 
								"month"=>params[:month], 
								"year"=>params[:year], 
								"verification_value"=>params[:verification_value], 
								"name"=>params[:name]
						}}}
					req.body = req.body.to_json
					response = Net::HTTP.new(host, port).start {|http| http.request(req) }
					

			
				
				
				
			
			
			rstatus = response.code
            response = JSON.parse(response.body)

			if rstatus == "200"
							@order.next!
			else

				@order.state = "cart"
				@order.save
			end
			render :json => { :payment_request=> params, 
										:payment_response =>  response,
										:order => @order, 
										:status => rstatus, 
										:request_status =>  @order.state 
									}.to_json
							return
			
		end

		if !@order.nil?
			if @order.state != "cart"
				@order = nil
			end
		end


		#Если приходит пустое то очищать ордер
		if !@order.nil?
		if order_params[:line_items_attributes].nil?
			@order.empty!
			respond_with(@order, default_template: :show, status: 201)
			return
		end
		end



		if @order.nil? 
			order_user = if @current_user_roles.include?('admin') && order_params[:user_id]
          			Spree.user_class.find(order_params[:user_id])
        		else
        				  current_api_user
       		end
				@order = Spree::Order.create(user_id: @user.id)

						return
				order_params[:line_items_attributes].each do |position| 
				variant  = Spree::Variant.find(position[:variant_id])
				if variant.nil?
					next
				end	
				@order.contents.add(variant, position[:quantity])
				end


			else
				@order.empty!
				@order.state = "cart"
				order_params[:line_items_attributes].each do |position| 
				variant  = Spree::Variant.find(position[:variant_id])
				if variant.nil?
					next
				end	
				@order.contents.add(variant, position[:quantity])
				end
			end 

if params[:status] == "delivery"
#if URI(request.referer).path == '/buyer-step/2'
            
            @order.state = "address"
            @order.save
			send = Hash.new		
					port = 80
					host = "localhost1"
					path = "/api/checkouts/#{@order.number}/?token=#{params[:token]}"
					req = Net::HTTP::Put.new(path, initheader = { 'Content-Type' => 'application/json'})
					req.body = send.to_json
					
					req.body = { "order"=> {
							"bill_address_attributes"=>
							{"firstname"=>@user.name,
							"lastname"=>@user.last_name,
							"address1"=>@user.adres,
							"city"=>@user.city,
							"phone"=>@user.phone,
							"zipcode"=>@user.postcode,
							"state_id"=>@user.state_id,
							"country_id"=>@user.countries_id
							}, 
						    "ship_address_attributes"=>
							{"firstname"=>@user.name,
							"lastname"=>@user.last_name,
							"address1"=>@user.adres,
							"city"=>@user.city,
							"phone"=>@user.phone,
							"zipcode"=>@user.postcode,
							"state_id"=>@user.state_id,
							"country_id"=>@user.countries_id
							}
						}
					}
					req.body = req.body.to_json
					response = Net::HTTP.new(host, port).start {|http| http.request(req) }
			
			rstatus = response.code
            response = JSON.parse(response.body)
            

					
							
			if rstatus == "200"
			    send = Hash.new		
					port = 80
					host = "localhost1"
					path = "/api/checkouts/#{@order.number}/?token=#{params[:token]}"
					req = Net::HTTP::Put.new(path, initheader = { 'Content-Type' => 'application/json'})
					req.body = send.to_json
					req.body = { "order" => {
						"shipments_attributes" => {
							"0" => {
								"selected_shipping_rate_id" => response["shipments"][0]["shipping_rates"][0]["id"],
								"id" => response["shipments"][0]["id"]
						}
						}}
						}
						
					req.body = req.body.to_json
					response = Net::HTTP.new(host, port).start {|http| http.request(req) }
			
			rstatus = response.code
            response = JSON.parse(response.body)







			               # if rstatus == "200"
							#    @order.next!
							#end
			else
				@order.state = "cart"
				@order.save
			end

			
			if response['error'].nil?
			
			
			render :json => { :payment_request=> params, 
										:delivery_response =>  response,
										:order => @order, 
										:status => rstatus, 
										:request_status =>  @order.state  , 
										:body => req.body
									}.to_json
							return
			else
			render :json => { :payment_request=> params, 
										:delivery_response =>  response,
										:order => @order, 
										:status => "return", 
										:request_status =>  @order.state  , 
										:body => req.body,
										:test => response["shipments"]
									}.to_json
							return
			
			end
               
               
end




		if params[:status] == "merge"
				#render :json => {:status => 4, :text => "merge", 
				#:user => @user }.to_json
				#return
				order_params[:line_items_attributes].each do |position| 
				variant  = Spree::Variant.find(position[:variant_id])

				if variant.nil?
					next
				end	

				@order.contents.add(variant, position[:quantity])
				end
				respond_with(@order, default_template: :show, status: 201)
			return
		end


       respond_with(@order, default_template: :show, status: 201)
       return
      end

     

		 def update
        #find_order(true) 
		  #R745920621 - test
		  @order = Spree::Order.find_by_number(params[:number])
        authorize! :update, @order, order_token

        if @order.update_cart(order_params)
          user_id = params[:order][:user_id]
          if current_api_user.has_spree_role?('admin') && user_id
            @order.associate_user!(Spree.user_class.find(user_id))
          end
          respond_with(@order, default_template: :show)
        else
          invalid_resource!(@order)
        end
      end

      def current
        @order = find_current_order
        if @order
          respond_with(@order, default_template: :show, locals: { root_object: @order })
        else
          head :no_content
        end
      end

      def mine
        if current_api_user.persisted?
          @orders = current_api_user.orders.reverse_chronological.ransack(params[:q]).result.page(params[:page]).per(params[:per_page])
        else
          render "spree/api/errors/unauthorized", status: :unauthorized
        end
      end

      def apply_coupon_code
        find_order
        authorize! :update, @order, order_token
        @order.coupon_code = params[:coupon_code]
        @handler = Spree::PromotionHandler::Coupon.new(@order).apply
        status = @handler.successful? ? 200 : 422
        render "spree/api/promotions/handler", :status => status
      end

      private
        def order_params
          if params[:order]
            normalize_params
            params.require(:order).permit(permitted_order_attributes)
          else
            {}
          end
        end


			def payment_params
          if params[:payment_source]
            params.require(:payment_source).permit(permitted_order_attributes)
          else
            {}
          end
        end

        def normalize_params
          params[:order][:payments_attributes] = params[:order].delete(:payments) if params[:order][:payments]
          params[:order][:shipments_attributes] = params[:order].delete(:shipments) if params[:order][:shipments]
          params[:order][:line_items_attributes] = params[:order].delete(:line_items) if params[:order][:line_items]
          params[:order][:ship_address_attributes] = params[:order].delete(:ship_address) if params[:order][:ship_address]
          params[:order][:bill_address_attributes] = params[:order].delete(:bill_address) if params[:order][:bill_address]
        end

        def find_order(lock = false)
          @order = Spree::Order.lock(lock).friendly.find(params[:id])
        end

        def find_current_order
          current_api_user ? current_api_user.orders.incomplete.order(:created_at).last : nil
        end

        def order_id
          super || params[:id]
        end
    end
  end
end
