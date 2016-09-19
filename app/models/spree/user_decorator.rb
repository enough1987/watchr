Spree::User.class_eval do
require 'twitter_cldr'

 #	belongs_to :countries_id, class_name: "Spree::Country"
  #  belongs_to :state_id, class_name: "Spree::State"



#validates :name, format: { with: /\A[a-zA-Z]+\z/,
#    message: "only allows letters and minium 3"}, length: { minimum: 3 } #

#validates :last_name, format: { with: /\A[a-zA-Z]+\z/,
 #   message: "only allows letters and minium 3" }, length: { minimum: 1 } 


validates :phone, length: { minimum: 5} 



def self.as_csv
  CSV.generate do |csv|
    csv << column_names
    all.each do |item|
      csv << item.attributes.values_at(*column_names)
    end
  end
end

end
