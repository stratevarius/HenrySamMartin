require "rails_helper"
require 'shoulda/matchers'

describe Executive do

	it {should validate_uniqueness_of(:email)}



end