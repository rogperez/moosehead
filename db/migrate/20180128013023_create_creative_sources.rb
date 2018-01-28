class CreateCreativeSources < ActiveRecord::Migration
  def change
    create_table :creative_sources do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
