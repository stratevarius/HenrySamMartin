class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|

      t.string :relationship_type
      t.string :job_title
      t.string :is_relationship_current
      t.string :is_relationship_primary
      t.integer :start_date_month
      t.integer :start_date_year
      t.integer :end_date_month
      t.integer :end_date_year
      t.string :is_verified_by_org
      t.string :is_verified_by_staff
      t.string :is_verified_by_thirdparty
      t.integer :created_by_exec_id
      t.string :exec_comments_on_relationship
      t.string :staff_comments_on_relationship
      
      t.timestamps
    end
  end
end
