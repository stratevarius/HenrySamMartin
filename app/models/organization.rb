class Organization < ActiveRecord::Base
	has_many :relationships
	has_many :executives, through: :relationships
end
