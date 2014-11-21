class RelationshipsController < ApplicationController

  def index
    relationships = Relationship.all
    render json: relationships, status: 200
  end

  def create
    relationship = Relationship.create(rel_params)
    # planet.name = "Joe's " + planet.name
    # planet.save
    render json: relationship, status: 201
  end

  def update
    relationship = Relationship.find(params[:id])
    relationship.update_attributes(rel_params)
    render nothing: true, status: 204
  end

  def destroy
    relationship = Relationship.find(params[:id])
    relationship.destroy
    render nothing: true, status: 204
  end

  private

  def rel_params
    params.require(:relationship).permit(
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
		executive_ids: []
    )
  end

end