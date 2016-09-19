module Spree
  module Api
      class SearchPageController < Spree::Api::BaseController

				def index
				#@propeties = Spree::ProductProperty.where(property_id: 2)
				#render :json => {:brands => @propeties}.to_json

				#@brands = @taxonomy.taxons.find(2)
				@Brands = Spree::Taxon.where(parent_id: 2)
				@Gender = Spree::Taxon.where(parent_id: 13)
				@Movement = Spree::Taxon.where(parent_id: 23)
				@CaseMaterial = Spree::Taxon.where(parent_id: 64)
				@Crystal = Spree::Taxon.where(parent_id: 81)
				@Dial = Spree::Taxon.where(parent_id: 86)
				@Gemstone = Spree::Taxon.where(parent_id: 107)
				@BraceletMaterial = Spree::Taxon.where(parent_id: 110)
				@BraceletColor = Spree::Taxon.where(parent_id: 136)
				@ClaspMaterial = Spree::Taxon.where(parent_id: 155)
				@ClaspType = Spree::Taxon.where(parent_id: 168)
				@Functions = Spree::Taxon.where(parent_id: 176)

				##price minimum - maximum
				prices = Spree::Price.includes(variant: :product).where(currency: Spree::Config[:currency])
				@minimum = (prices.minimum(:amount) || 0).floor.to_i
				@maximum = (prices.maximum(:amount) || 0).ceil.to_i
                @boolean = ['Yes' => true,
                 'No'=> false 
                ]
                @preowned = ['New' => false,
                 'Preowned'=> true 
                ]
				render :json => {                   
				                                    :price_min => @minimum,
													:price_max => @maximum,
													:case_size_min => 25,
													:case_size_max => 458,
													:gemstone =>  @boolean,
													:year_min => 1800,
													:year_max => 2016,
													:preowned => @preowned,
													:box => @boolean,
													:papers => @boolean,
													:brands => @Brands,
													:gender => @Gender,
													:movement => @Movement,
				                                    :case_material => @CaseMaterial,
				                                    :crystal => @Crystal,
				                                    :dial => @Dial,
				                                    :gemstone => @Gemstone,
				                                    :bracelet_material => @BraceletMaterial,
				                                    :bracelet_color => @BraceletColor,
				                                    :clasp_material => @ClaspMaterial,
				                                    :clasp_type => @ClaspType,
				                                    :functions => @Functions
													}.to_json
				end



        
			end  
	end 
end
