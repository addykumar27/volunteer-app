class AddColumnsToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :mission_statement, :string
  end
end
