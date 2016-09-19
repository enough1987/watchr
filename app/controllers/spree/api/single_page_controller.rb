module Spree
  module Api
      class SinglePageController < Spree::Api::BaseController

def index    
			if Spree::Currency.find_by_char_code(params[:currency].upcase).nil?
				render :json => {:status => 500, :error => "currency fail"}.to_json	
				return
			else
				Spree.config do |config|
					config.currency = params[:currency].upcase
				end
			end
      @products = Spree::Product.find(params[:id])
		expires_in 15.minutes, public: true
		headers['Surrogate-Control'] = "max-age=#{15.minutes}"
		#@similar = Spree::Taxon.find_by_name("Front view").active_products
		
@basic_info = Hash.new

@basic_info[:brand] = ["name" => "brand!!!","id" => "brand", "type" => "string", "items" => @products.taxons.where(parent_id: 2)]
@basic_info[:gender] = ["name" => "gender","id" => "gender", "type" => "string", "items" => @products.taxons.where(parent_id: 13)]
@basic_info[:preowned] = ["name" => "preowned","id" => "preowned", "type" => "yes_no", "items" => {"name" => @products.new.to_s}]
@basic_info[:box] = ["name" => "box","id" => "box", "type" => "yes_no", "items" => {"name" => @products.box.to_s}]
@basic_info[:year] = ["name" => "year","id" => "year", "type" => "year", "items" => {"name" => @products.year.to_s}]
@basic_info[:movement] = ["name" => "movement","id" => "movement", "type" => "string", "items" => @products.taxons.where(parent_id: 23)]
@basic_info[:case_size] = ["name" => "сase size", "id" => "сase_size", "type" => "mm", "items" => {"name" => @products.case_size.to_s}] 
@basic_info[:case_material] = ["name" => "case material","id" => "case_material","type" => "string", "items" => @products.taxons.where(parent_id: 64)]
@basic_info[:crystal] = ["name" => "crystal","id" => "crystal", "type" => "string", "items" => @products.taxons.where(parent_id: 81)]
@basic_info[:dial] = ["name" => "dial","id" => "dial", "type" => "string", "items" => @products.taxons.where(parent_id: 86)]
@basic_info[:bracelet_material] =["name" => "bracelet material","id" => "bracelet_material", "type" => "string", "items" => @products.taxons.where(parent_id: 110)]
@basic_info[:bracelet_color] = ["name" => "bracelet color","id" => "bracelet_color", "type" => "string", "items" => @products.taxons.where(parent_id: 136)]
@basic_info[:clasp_material] = ["name" => "clasp material","id" => "clasp_material", "type" => "string", "items" => @products.taxons.where(parent_id: 155)]
@basic_info[:clasp_type] = ["name" => "clasp type","id" => "clasp_type", "type" => "string", "items" => @products.taxons.where(parent_id: 168)]
@basic_info[:functions] = ["name" => "functions","id" => "functions", "type" => "string", "items" => @products.taxons.where(parent_id: 176)]
@basic_info[:gemstone] =  ["name" => "gemstone","id" => "gemstone", "type" => "yes_no", "items" => {"name" => @products.gemstone.to_s}] 
@basic_info[:papers] =  ["name" => "papers","id" => "papers", "type" => "yes_no", "items" => {"name" => @products.papers.to_s}]


	respond_with(@products,@basic_info)

	end

        

   
       
       
      end
    end
  end
