object false

#node(:total_count) { @products.total_count }
#node(:current_page) { params[:page] ? params[:page].to_i : 1 }
#node(:per_page) { params[:per_page] || Kaminari.config.default_per_page }
#node(:pages) { @products.total_pages }



        node(:user) {@out[0][:user]}
        node(:seller) {@out[0][:seller]}

							child(@out[0][:order] => :order) do
							  extends "spree/api/orders/show"
							end


							child(@out[0][:favorites] => :favorites) do
							  extends "spree/api/products/show_buy"
							end
