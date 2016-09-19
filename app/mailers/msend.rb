class Msend < ApplicationMailer
default from: "info@watchr.co.uk", 
template_path: "mailers/sendmessage"
  #layout 'mailer'

	def contact ( input )
		@message = input
		@subject =" New message from site WatchR.co.uk"
#claudio.degiovanni@gmail.com
		mail( from: @message[:email], to: "claudio@watchr.co.uk", subject: @subject )
   end
   
   	def watch_service ( input )
		@message = input
		@subject ="Watch Service Application №#{input.id}"
#claudio.degiovanni@gmail.com
		mail( from: @message[:email], to: "claudio@watchr.co.uk", subject: @subject )
   end
end
