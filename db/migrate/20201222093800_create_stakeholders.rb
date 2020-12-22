class CreateStakeholders < ActiveRecord::Migration[6.0]
  def change
    create_table :stakeholders do |t|
      t.string :real_name
      t.string :name_alias
      t.date :birthday_at
      t.string :from
      t.float :height
      t.text :introduce, limit: 16777215
      t.json :images

      t.timestamps
    end
  end
end
