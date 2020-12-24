class AddImageToVideowork < ActiveRecord::Migration[6.0]
  def change
    add_column :videoworks, :image, :json
  end
end
