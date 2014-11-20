require "rails_helper"
require 'shoulda/matchers'

describe Organization do

	it {should validate_uniqueness_of(:name)}
	it {should validate_presence_of(:sector_type)}
	it {should validate_presence_of(:web_url)}
	it {should validate_presence_of(:hq_email)}
	it {should validate_presence_of(:hq_address_city)}
	it {should validate_presence_of(:hq_address_state)}
	it {should validate_presence_of(:hq_address_zip)}
	it {should validate_presence_of(:hq_telephone)}
	
end
