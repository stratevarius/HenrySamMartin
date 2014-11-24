require "rails_helper"
require 'shoulda/matchers'

describe ExecutivesController do

	it "should get page for index" do
		get :index

		expect(response).to be_success
		expect(response).to have_http_status(200)
	end

	it "should get an object from db" do
		get :index
		assigns(@executives).should_not be_nil
	end

	it "should create an executive" do
		post :create, executive: FactoryGirl.attributes_for(:an_executive)
		expect(response).to have_http_status(201)
	end


	
	
end