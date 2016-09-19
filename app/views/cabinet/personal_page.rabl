object false

#node(:total_count) { @products.total_count }
#node(:current_page) { params[:page] ? params[:page].to_i : 1 }
#node(:per_page) { params[:per_page] || Kaminari.config.default_per_page }
#node(:pages) { @products.total_pages }



        node(:user) {@out.user}
        node(:seller) {@out.seller}
        node(:order) {@out.order}
        node(:favorites) {@out.favorites}

#@cat = Spree::Taxon.find(2).children


							

#a = 0
#@cat.each do |i|

#@cat2 = i

#					child(@cat2 => "#{a}" ) do 
#							node(:name) { i.name }
#							node(:icon) { i.icon }
#							@prod = Spree::Product.in_taxons(i.id)
#							child(@prod => :products) do
#							  extends "spree/api/products/show"
#@							end
##						next
#						
#					end
#a+=1	
#end

