class CreateSubRecords < ActiveRecord::Migration
  def change
    create_table :sub_records do |t|
      t.references :user
      t.references :sub_plan

      t.timestamps
    end
    add_index :sub_records, :user_id
    add_index :sub_records, :sub_plan_id
  end
end
