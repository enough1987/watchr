class AddUploadSesionToSellerImages < ActiveRecord::Migration
  def change
 		add_column :seller_images, :upload_session, :string
		add_column :seller_images, :seller_id, :integer
  end
end
