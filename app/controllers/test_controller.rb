class TestController < ApplicationController

def one
	render :json => {:status => 500, :error => session[:order_id] }.to_json



end

	def two
		#Тестирование цикла
		@files = SellerImage.where( upload_session: params[:session_upload] ).take(99)
		@array = Array.new
	
			@files.each do |i|
				@array << i.attachment.path(:medium)  
			end

		render :json => { :status =>@array  }.to_json

	end

end
