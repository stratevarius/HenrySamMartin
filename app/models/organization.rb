class Organization < ActiveRecord::Base

	validates_uniqueness_of :name
	validates_presence_of :sector_type
	validates_presence_of :web_url
	validates_presence_of :hq_email
	validates_presence_of :hq_address_city
	validates_presence_of :hq_address_state
	validates_presence_of :hq_address_zip
	validates_presence_of :hq_telephone

end
