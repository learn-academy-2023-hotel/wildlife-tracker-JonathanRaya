class AddColumnToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :sightings, :integer
  end
end
