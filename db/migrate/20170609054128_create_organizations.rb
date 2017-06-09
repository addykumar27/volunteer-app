class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
