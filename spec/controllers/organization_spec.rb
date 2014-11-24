require "rails_helper"
require 'shoulda/matchers'

describe OrganizationsController do

	it "should get page for index" do
		get :index
		expect(response).to be_success
		expect(response).to have_http_status(200)
	end

	it "should get an object from db" do
		get :index
		assigns(@organizations).should_not be_nil
	end

	it "should create an organization" do
		post :create, organization: FactoryGirl.attributes_for(:an_organization)
		expect(response).to have_http_status(201)
	end

	# it "should post page for create" do
	# 	post :create (:name => "HSM")
	# 	expect(response).to be_success
	# 	expect(response).to have_http_status(201)
	# end
	
end