module Spree
  Product.class_eval do

	validates :brand, presence: true

  end 
end
