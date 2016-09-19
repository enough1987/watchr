
module Spree
	module Admin
    ProductsController.class_eval do 


    def load_data
                @taxons = Taxon.order(:name)
                @option_types = OptionType.order(:name)
                @tax_categories = TaxCategory.order(:name)
                @shipping_categories = ShippingCategory.order(:name)
                @brands = Taxon.where(parent_id: 2).order(:name)
    end

              
    end
  end
end
