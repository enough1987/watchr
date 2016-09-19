#module Spree
############################## request error codes
#login - true | 200
#phone exist | 500
#registration - true | 200
#registration bad state | 500
#ship adress validation error | 500
#ship adress add - true | 4
#sign up - true | 4
#sign up - false | 500
#sign in - true | 4
#sign in user is not exist | 3
#edit profile - true | 4

class AuthController < ApplicationController
	skip_before_action :verify_authenticity_token
require 'net/http'
require 'net/https'







def oneall
    cookies.permanent[:connection_token] = params[:connection_token]
   
 	if  params[:referer].nil?
 	 redirect_to "http://watchr.42team.ru/"
 	 else
 	 redirect_to "http://watchr.42team.ru/"+ params[:referer]
 	 end
    
end






def oauth

  site_subdomain = 'watchr'
  site_public_key = 'fe5ed1f6-6c28-4d93-8375-8c255aaadeab'
  site_private_key = '599604f9-4927-4d06-9b80-113feb1cdaf7'
  
req = Net::HTTP::Get.new("/connections/#{params[:connection_token]}.json", {'Content-Type' =>'application/json'})
req.basic_auth "#{site_public_key}", "#{site_private_key}"
http = Net::HTTP.new('watchr.api.oneall.com', 443)
http.use_ssl = true
# SSLv3 is broken at time of writing (POODLE), and it's old anyway.

# if you want to verify a server is from a certain signing authority, 
# (self-signed certs, for example), do this:
response = http.start {|http| http.request(req) }
rstatus = response.code
    info = JSON.parse(response.body)
    
    
    

						
						
						
	info['name'] = info['response']['result']['data']['user']['identity']['name']['givenName']
	info['email'] = info['response']['result']['data']['user']['identity']['emails'][0]['value']
    info['last_name'] = info['response']['result']['data']['user']['identity']['name']['familyName']
    info['first_name'] = info['response']['result']['data']['user']['identity']['name']['givenName']
         #info['phone'] = = info['response']['result']['data']['user']['identity']['name']['givenName']

     #otxt = "Page  content: #{page_content}, Network: #{info['network']}, E-mail: #{info['email']}, First name: #{info['first_name']}, Last name: #{info['last_name']}"
	
		@user = Spree::User.find_by( email:  info['email'])


if params[:state] == 'login'
		if @user.present?
		    @user.generate_spree_api_key! if @user.spree_api_key.blank?
			cookies.delete(:connection_token)
			render :json => {:status => 200, :text => "Token created", 
			:user => @user }.to_json
			return
else

#           if params[:phone].nil? || params[:phone] ==""
#		    render :json => {:status => 500, :error => "phone is not exist", :one_all_data => [
#			    'name' => info['name'],
#			    'email' => info['email'], 
#			    'last_name' => info['last_name'],#
#		    'first_name' =>  info['first_name'],
#			    'phone' =>  info['phone']
	#		    ]}.to_json		  
     	#		return
           # else
           # @phone = params[:phone] || info['phone']
           #     end
            #registration user
		    #@user = Spree::User.new(email:  info['email'], phone:  @phone, name: info['last_name'], last_name: info['first_name'], password: "42team-qazwsx@13", password_confirmation: "42team-qazwsx@13",)
			#Исключение ошибки сохранения
			#		if !@user.save
		#				render :json => {:status => 500, :error => @user.errors.messages, :user => info }.to_json
			#			#Возможно дыра  в безопастности         	  
			#			#unauthorized		
		  	#		return
       	 	#end					

			#генератор токена
        	#@user.generate_spree_api_key!
        	#cookies.delete(:connection_token)
			render :json => {:status => 500, :error => "user is not exist", 
			:user => @user}.to_json
        	return
		end
end




if params[:state] == 'registration'

            if @user.present?
			        render :json => {:status => 400, :error => "user exist, you need login" }.to_json
			        return
		    end


            render :json => {:status => 200, :one_all_data => [
			'name' => info['name'],
			'email' => info['email'], 
			'last_name' => info['last_name'],
			'first_name' =>  info['first_name'],
			'phone' =>  info['phone']
			]}.to_json		  
 			return
end


        if params[:state] != 'registration' || 'login'
            render :json => {:status => 500, :error => 'params action is not defined', :actions => params[:actions] }.to_json		  
            return
        end
end

def ship_address
		@user = Spree::User.find_by( spree_api_key: params[:token] )

			@adres = Spree::Address.new(
				firstname: @user.name, 
				lastname: @user.last_name,
				address1: params[:user][:adres],
				address2: params[:user][:adres2],
				city: params[:user][:city],
				zipcode: params[:user][:postcode],
				country_id: params[:user][:countries_id],
				state_id: params[:user][:state_id],
				phone: params[:user][:phone])
            
				if !@adres.save
						render :json => {:status => 500, :error => @adres.errors.messages }.to_json
		  			return
		      end
				
				@user.ship_address_id = @adres.id
				@user.city = @adres.city
				@user.countries_id = params[:user][:countries_id]
				@user.state = params[:user][:state]
				@user.country = params[:user][:country]
				@user.state_id = @adres.state_id
				@user.postcode = @adres.zipcode
				@user.house = params[:user][:house]
				@user.adres = @adres.address1
				@user.adres2 = @adres.address2
				@user.phone = @adres.phone

				if !@user.save
						render :json => {:status => 500, :error => @user.errors.messages}.to_json
						#Возможно дыра  в безопастности         	  
						#unauthorized		
		  			return
       	 	end	



			render :json => {:status => 4, :text => "shipping address save - done"}.to_json		  
 			return
				
end


	def sign_up


	 		@user = Spree::User.find_by( email: params[:user][:email] )
					#!!! точка входа капчи

					
					#пользователь существует        	
			if @user.present?
        	  		render :json => {:status => 1, :text => "user exist"}.to_json		  			
					return
        	end
	
	
			if params[:state] == 'social_registration'
				@user = Spree::User.new(
				email:  params[:user][:email], 
				phone:  params[:user][:phone], 
				name: params[:user][:name], 
				last_name: params[:user][:last_name],
				full_adress: params[:user][:full_adress],			
				password: "42team-qazwsx@13", 
				password_confirmation: "42team-qazwsx@13")
			else
				@user = Spree::User.new(user_params)
        	end
			
					#Исключение ошибки сохранения
					if !@user.save
						render :json => {:status => 500, :error => @user.errors.messages}.to_json
		  			return
       	 	end					

			


					#генератор токена
        	@user.generate_spree_api_key!
			render :json => {:status => 4, :text => "Token created", 
			:user => @user}.to_json 
        	return
	end
	
	



	def sign_in     	
		@user = Spree::User.find_by( email: params[:user][:email] )
		
		

		#Если несовпадение
		if !@user.present? || !@user.valid_password?(params[:user][:password])
     	#unauthorized
			render :json => {:status => 3, :text => "user is not exist"}.to_json		  
 			return
    	end
    
		@user.generate_spree_api_key! if @user.spree_api_key.blank?
		render :json => {:status => 4, :text => "Token created", 
		:user => @user }.to_json

  end


def edit_profile     	
		
		@user = Spree::User.find_by( spree_api_key: params[:token] )
		

		if !@user.present?
     	#unauthorized
			render :json => {:status => 3, :text => "user is not exist"}.to_json		  
 			return
    	end


		@user.update(user_params)

		@user.generate_spree_api_key! if @user.spree_api_key.blank?
		render :json => {:status => 4, :text => "Token created", 
		:user => @user }.to_json

  end


def forgot_password     	
		@user = Spree::User.find_by( email: params[:user][:email] )
		

		#Если несовпадение
		if !@user.present?
     	#unauthorized
			render :json => {:status => 3, :text => "user is not exist"}.to_json		  
 			return
    	end
    	


		render :json => {:status => 5, :text => "send email" }.to_json

  end

  private def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :adress, :name, :last_name , :phone , :adres, :adres2, :country, :city, :house, :postcode, :countries_id, :state_id, :state, :country, :full_adress)
  end
  
end


