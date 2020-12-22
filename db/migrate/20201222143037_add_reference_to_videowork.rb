class AddReferenceToVideowork < ActiveRecord::Migration[6.0]
  def change
    add_reference :videoworks, :category, foreign_key: true
  end
end
