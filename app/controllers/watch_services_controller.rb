class WatchServicesController < ApplicationController
  #before_action :set_watch_service, only: [:show, :edit, :update, :destroy]
skip_before_filter :verify_authenticity_token  

  def index
    @watch_service = WatchService.new(watch_service_params)

    if @watch_service.save
      			
        if Msend.watch_service( @watch_service ).deliver
			render :json => {:status => 200, :text => "suxess" }.to_json
		else 
				render :json => {:status => 500, :text => "fail" }.to_json
		end
    else
        		render :json => {:status => 500, :text => "fail" }.to_json
    end

  end




  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watch_service
      @watch_service = WatchService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watch_service_params
      params.require(:watch_service).permit(:brand, :email, :model, :name, :phone, :polishing, :reference, :repair, :revision, :wristband, :servicing)
    end
end
