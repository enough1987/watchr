class SellerMail < ApplicationMailer

 default from: "info@watchr.co.uk", 
template_path: "mailers/items"
  #layout 'mailer'

	def add ( seller )
		@seller_data = seller
      
#attachments['free_book.pdf'] = File.read('')
		@subject =" New seller request ID -" + @seller_data.id.to_s
		@user = Spree::User.find( @seller_data[:user_id] )
		
		@files = SellerImage.where( upload_session: @seller_data[:session_upload] ).take(99)
		@array = Array.new

			@files.each do |i|
				@array << i.attachment.url(:thumb)
				attachments[i.attachment_file_name] = File.read(i.attachment.path(:medium))
			end

#@user[:email]


#@period = @seller_data[:period]
#each do |isset|
#if isset[:time].nil?	#
#	next
#end		

#@period_out << isset
				
#end

#claudio.degiovanni@gmail.com
		mail( from: @user[:email], to: "claudio@watchr.co.uk", subject: @subject )
   end

end
