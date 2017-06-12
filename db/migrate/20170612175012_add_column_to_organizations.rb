class AddColumnToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :description, :string
    add_column :organizations, :website, :string
  end
end
