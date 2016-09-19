
##############################			
# Price
# Brand
# Gender	
# Movement	
# Case Size (mm)	
# Case Material	
# Crystal	Dial	
# Gemstone	
# Bracelet Material	
# Bracelet Color	
# Clasp Material	
# Clasp Type	
# Year	
# New/Preowned	
# Box	Papers	
# Functions
#############################

module Spree
  module Api
      class SearchController < Spree::Api::BaseController

        attr_reader :search_filter

        def index    
       
            
	        if Spree::Currency.find_by_char_code(params[:currency].upcase).nil?
		        render :json => {:status => 500, :error => "currency fail"}.to_json	
		        return
	        else
		        Spree.config do |config|
			        config.currency = params[:currency].upcase
		        end
	        end





            @products = Spree::Product.all
			

		   i = 0
            @products.each do |p|
                if p.basic_info.nil? || p.basic_info == ""
                    @products[i]["basic_info"] = basic_info(p.id)
                end
                i += 1
            end
            

            
			expires_in 15.minutes, public: true
		    headers['Surrogate-Control'] = "max-age=#{15.minutes}"
		    respond_with(@products)
        end

        
        def basic_info(id)
        
       @product = Spree::Product.find(id)
        
        @basic_info = Hash.new
        @brand = Array.new
        
        @brand << Spree::Taxon.find(@product.brand.to_i)
        
        @basic_info[:price] = ["name" => "Price", "id" => "price", "type" => "range", "items" => {"name" =>  @product.price.to_s || nil }] 
        @basic_info[:case_size] = ["name" => "Case Size","id" => "case_size", "type" => "range", "items" => {"name" => @product.case_size.to_s || nil }] 
        @basic_info[:year] = ["name" => "Year", "id" => "year", "type" => "range", "items" => {"name" => @product.year.to_s || nil }]
       
        @basic_info[:gemstone] =  ["name" => "Gemstone", "id" => "gemstone", "type" => "switch", "items" => {"name" => @product.gemstone || nil }]         
        @basic_info[:preowned] = ["name" => "Preowned", "id" => "preowned", "type" => "switch", "items" => {"name" => @product.new || nil }]
        @basic_info[:box] = ["name" => "Box", "id" => "box", "type" => "switch", "items" => {"name" => @product.box || nil }]
        @basic_info[:papers] =  ["name" => "Papers", "id" => "papers", "type" => "switch", "items" => {"name" => @product.papers || nil }]

        @basic_info[:gender] = ["name" => "Gender", "id" => "gender", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 13)]
        @basic_info[:movement] = ["name" => "Movement", "id" => "movement", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 23)]
        @basic_info[:case_material] = ["name" => "Case material", "id" => "case_material", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 64)]
        @basic_info[:crystal] = ["name" => "Crystal", "id" => "crystal", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 81)]
        @basic_info[:dial] = ["name" => "Dial", "id" => "dial", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 86)]
        @basic_info[:bracelet_material] =["name" => "Bracelet material", "id" => "bracelet_material", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 110)]
        @basic_info[:bracelet_color] = ["name" => "Bracelet color", "id" => "bracelet_color", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 136)]
        @basic_info[:clasp_material] = ["name" => "Clasp material", "id" => "clasp_material", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 155)]
        @basic_info[:clasp_type] = ["name" => "Clasp type", "id" => "clasp_type", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 168)]
        @basic_info[:functions] = ["name" => "Functions", "id" => "functions", "type" => "checkbox", "items" => @product.taxons.where(parent_id: 176)]
        @basic_info[:brand] = ["name" => "Brand", "id" => "brand", "type" => "brand", "items" => @brand]
    
            
            
            @product.update(basic_info: @basic_info.to_json)
            return @basic_info.to_json
        end

      end
    end
  end

