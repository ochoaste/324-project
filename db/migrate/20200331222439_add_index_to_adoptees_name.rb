class AddIndexToAdopteesName < ActiveRecord::Migration[5.2]
  def change
  add_index :adoptees, :name, unique: true  
end
end
