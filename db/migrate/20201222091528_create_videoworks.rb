class CreateVideoworks < ActiveRecord::Migration[6.0]
  def change
    create_table :videoworks do |t|
      t.string :title
      t.date :screening_at
      t.date :screening_on
      t.text :summary
      t.json :directors
      t.json :screenplaies
      t.json :casts

      t.timestamps
    end
  end
end
