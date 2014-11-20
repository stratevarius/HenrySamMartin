class Executive < ActiveRecord::Base
  has_many :relationships
  has_many :organizations, through: :relationships

end