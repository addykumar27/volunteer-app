class Opportunity < ApplicationRecord
	has_many :users, through: :user_opp
	belongs_to :organizations
end
