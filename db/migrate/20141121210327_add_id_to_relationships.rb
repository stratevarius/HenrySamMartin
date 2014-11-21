class AddIdToRelationships < ActiveRecord::Migration
  def change
	add_column :relationships, :id, :primary_key
  end
end
