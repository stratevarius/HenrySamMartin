class OrganizationsController < ApplicationController

skip_before_filter :authorize

  def index
    @organizations = Organization.all
    # render json: @organizations, status: 200
  end

  def show
  	@organization = Organization.find(params[:id])
  end

  def new
  	@organization = Organization.new
  	@organization.relationships.build
  end

  def create
    @organization = Organization.new(org_params)
    if @organization.save
    	redirect_to organizations_path
    else
    	render 'new'
    end
    # render json: @organization, status: 201
  end

  def edit
  	@organization = Organization.find(params[:id])
  end

  def update
    @organization = Organization.find(params[:id])
	if @organization.update_attributes(org_params)
		redirect_to organizations_path
	else
		render 'edit'
	end
    # render nothing: true, status: 204
  end

  def destroy
    @organization = Organization.find(params[:id])
    @organization.destroy
    redirect_to organizations_path
    # render nothing: true, status: 204
  end

  private

  def org_params
    params.require(:organization).permit(
		:name, 
		:address_street, 
		:created_at, 
		:updated_at, 
		:crunchbase_uuid, 
		:Org_Types_id, 
		:sector_type, 
		:strat_org_constituent_type, 
		:description, 
		:web_url, 
		:parent_or_child_org, 
		:parent_org_id, 
		:size_revenue, 
		:size_employees_structured, 
		:vision, 
		:mission, 
		:goals, 
		:values, 
		:motto_or_tagline, 
		:hq_address_city, 
		:hq_address_state, 
		:hq_address_zip, 
		:hq_telephone, 
		:hq_email, 
		:region_headquartered_in, 
		:date_org_founded, 
		:social_twitter, 
		:social_linkedin, 
		:social_facebook, 
		:social_googleplus, 
		:social_youtube, 
		:social_platform_dominant, 
		:org_special_designations, 
		:logo_file_name, 
		:logo_file_type, 
		:is_verified_by_staff, 
		:is_verified_by_thirdparty, 
		:exec_comments_on_org, 
		:staff_comments_on_org, 
		:created_by_exec_id, 
		:certifications, 
		:source_original, 
		:is_active, 
		executive_ids: [],
		# relationships_attributes: [:job_title, executives_attributes: [:firstname, :lastname]]
    )
  end

    def rel_params
    params.require(:relationship).permit(
    :executive_id, 
    :organization_id, 
    :relationship_type, 
    :job_title, 
    :is_relationship_current, 
    :is_relationship_primary, 
    :start_date_month, 
    :start_date_year, 
    :end_date_month, 
    :end_date_year, 
    :is_verified_by_org, 
    :is_verified_by_staff, 
    :is_verified_by_thirdparty, 
    :created_by_exec_id, 
    :exec_comments_on_relationship, 
    :staff_comments_on_relationship, 
    :created_at, 
    :updated_at
    )
  end

end