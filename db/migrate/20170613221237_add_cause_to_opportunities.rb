class AddCauseToOpportunities < ActiveRecord::Migration[5.1]
  def change
    add_column :opportunities, :cause, :string
  end
end
