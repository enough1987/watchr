class SellerController < ApplicationController
	skip_before_filter :verify_authenticity_token 

def upload
		
      if cookies[:upload_session].nil?
			upload_session = SecureRandom.hex(10)
		else
			upload_session = cookies[:upload_session]
		end
		cookies.permanent[:upload_session] = { value: upload_session, expires: 1.hour.from_now }
		@sellerimage = SellerImage.create(attachment: params[:attachment][0], upload_session: cookies[:upload_session] )
		if !@sellerimage.save
		render :json => { :status => 500, :message => @sellerimage.errors.messages	}.to_json
		return
		end
						render :json => { :status => 2, 
								            :thumb => @sellerimage.attachment.url(:thumb)}.to_json
								
end

def seller_add

if cookies[:upload_session].nil?
			upload_session = SecureRandom.hex(10)
		else
			upload_session = cookies[:upload_session]
end
user = Spree::User.find_by(spree_api_key: params['token'])

if user.nil?
 render :json => { :status => 500, 
      :message => "error, token free"}.to_json
 return
else

@period = params[:seller_add][:period]

out_period = ""
@period.each do |i|

	if i[:time] == ""
		next
	else

	out_period = out_period + "\n day:" + i[:day].to_s + " - "  + i[:name].to_s+ ", time: "  + i[:time].to_s

end
end

	@out_seller = Seller.create( 
	brand: params[:seller_add][:brand], 
	model: params[:seller_add][:model], 
	condition: params[:seller_add][:condition], 
	reference: params[:seller_add][:reference], 
	year: params[:seller_add][:year], 
	content: params[:seller_add][:content], 
	comment: params[:seller_add][:comment], 
	period: out_period,
	session_upload: upload_session,
	user_id: user.id
	)
      cookies.delete(:upload_session)

@files = SellerImage.where( upload_session: upload_session )
		
render :json => { :status => 2, :files=> @files}.to_json


SellerMail.add( @out_seller ).deliver



end
end
end




