class CreateJoinTableExecutivesOrganizations < ActiveRecord::Migration
  def change
    create_join_table :executives, :organizations do |t|
      # t.index [:executive_id, :organization_id]
      # t.index [:organization_id, :executive_id]
      
    end
  end
end
