class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :name
      t.string :description
      t.string :hours
      t.string :status

      t.timestamps null: false
    end
  end
end
