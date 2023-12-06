class RemoveColumnFromAnimal < ActiveRecord::Migration[7.0]
  def change
    remove_column :animals, :sightings
  end
end
