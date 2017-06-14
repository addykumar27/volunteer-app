class AddOrgIdToOpportunities < ActiveRecord::Migration[5.1]
  def change
    add_reference :opportunities, :organization, foreign_key: true
  end
end
