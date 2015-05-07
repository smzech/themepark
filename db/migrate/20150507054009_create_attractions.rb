class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :name
      t.string :description
      t.string :capacity
      t.references :park, index: true
      t.string :status

      t.timestamps null: false
    end
    add_foreign_key :attractions, :parks
  end
end
