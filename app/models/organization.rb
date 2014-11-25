class Organization < ActiveRecord::Base

	validates_uniqueness_of :name
	# validates_presence_of :sector_type
	validates_presence_of :web_url
	validates_presence_of :hq_address_city
	validates_presence_of :hq_address_state
	validates_presence_of :hq_address_zip
	# validates_presence_of :hq_telephone

	# validates_format_of :hq_email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	# validates_length_of :hq_email, maximum: 255


	has_many :relationships
	has_many :executives, through: :relationships
	
end
