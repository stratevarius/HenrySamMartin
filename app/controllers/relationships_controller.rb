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
			:is_active
		)
	end

end