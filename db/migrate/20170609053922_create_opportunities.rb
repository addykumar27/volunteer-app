class CreateOpportunities < ActiveRecord::Migration[5.1]
  def change
    create_table :opportunities do |t|
      t.string :name
      t.string :location
      t.string :organization

      t.timestamps
    end
  end
end
