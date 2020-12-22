class CreateUserRelatoins < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relatoins do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
