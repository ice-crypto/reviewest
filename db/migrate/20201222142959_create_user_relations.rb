class CreateUserRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relations do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
