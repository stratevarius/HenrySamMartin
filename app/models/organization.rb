class Organization < ActiveRecord::Base
	has_many :executives_organizations
	has_many :executives, through: :executives_organizations
end
