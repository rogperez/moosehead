class CreateCreativeConfigurations < ActiveRecord::Migration
  def change
    create_table :creative_configurations do |t|
      t.integer :plan_id
      t.jsonb :configuration

      t.timestamps null: false
    end
  end
end
