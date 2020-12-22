class CreateVideoworkStakeholders < ActiveRecord::Migration[6.0]
  def change
    create_table :videowork_stakeholders do |t|
      t.references :videowork, foreign_key: true
      t.references :stakeholder, foreign_key: true

      t.timestamps
    end
  end
end
