class AddImageToOpportunities < ActiveRecord::Migration[5.1]
  def change
    add_column :opportunities, :image, :string
  end
end
