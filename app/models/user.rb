class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
	has_many :useropps, dependent: :destroy
	has_many :opportunities, through: :useropps

	has_many :favorites
  	has_many :favorite_opportunities, through: :favorites, source: :favorited, source_type: 'Opportunity'
end
