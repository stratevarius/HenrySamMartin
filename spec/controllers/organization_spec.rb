require "rails_helper"

describe OrganizationsController, :type => :controller do

	it "should get page for index" do
		get :index
		expect(response).to be_success
		expect(response).to have_http_status(200)
	end

	# it "should post page for create" do
	# 	post :create (:name => "HSM")
	# 	expect(response).to be_success
	# 	expect(response).to have_http_status(201)
	# end
	
end