class Executive < ActiveRecord::Base
  has_many :executives_organizations
  has_many :organizations, through: :executives_organizations

end