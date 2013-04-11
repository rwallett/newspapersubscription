class CreateSubPlans < ActiveRecord::Migration
  def change
    create_table :sub_plans do |t|
      t.float :price
      t.boolean :daily
      t.references :newspaper

      t.timestamps
    end
    add_index :sub_plans, :newspaper_id
  end
end
