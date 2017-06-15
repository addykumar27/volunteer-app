class Opportunity < ApplicationRecord
	has_many :users, through: :useropps
	has_many :useropps, dependent: :destroy
	belongs_to :organization, optional: true
end
