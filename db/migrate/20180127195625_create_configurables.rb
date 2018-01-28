class CreateConfigurables < ActiveRecord::Migration
  def change
    create_table :configurables do |t|
      t.string :name
      t.integer :account_id
      t.jsonb :configuration

      t.timestamps null: false
    end
  end
end
