class Sendmessage < ApplicationMailer
default from: "info@watchr.co.uk", 
template_path: "mailers/sendmessage"
  #layout 'mailer'

	def add ( input )
		@message = input
		@subject =" New message from site WatchR.co.uk"
#claudio.degiovanni@gmail.com   claudio@watchr.co.uk
		mail( from: @message[:email], to: "test@mfsa.ru", subject: @subject )
   end
end
