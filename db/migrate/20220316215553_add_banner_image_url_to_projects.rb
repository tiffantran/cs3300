class AddBannerImageUrlToProjects < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :banner_image_url, :string
  end
end
