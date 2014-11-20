class RenameExecutivesOrganizationsToRelationships < ActiveRecord::Migration
 def change
    rename_table :executives_organizations, :relationships
  end 
end
