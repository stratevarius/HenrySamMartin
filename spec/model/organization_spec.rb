require "rails_helper"
require 'shoulda/matchers'

describe Organization do

	it {should validate_uniqueness_of(:name)}
	it {should validate_presence_of(:sector_type)}
	it {should validate_presence_of(:web_url)}
	it {should validate_presence_of(:hq_address_city)}
	it {should validate_presence_of(:hq_address_state)}
	it {should validate_presence_of(:hq_address_zip)}
	it {should validate_presence_of(:hq_telephone)}
	it { should ensure_length_of(:hq_email).is_at_most(255)}
	it do
      should allow_value('a@a.com').
                 for(:hq_email)
    end

  	it do
      should !allow_value('asdf').
                 for(:hq_email)
    end
	
	#add test for have_many assocaiton
	it { should have_many(:executives) }

end
