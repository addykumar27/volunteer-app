class User < ApplicationRecord
	has_many :opportunities, through: :user_opps
end
