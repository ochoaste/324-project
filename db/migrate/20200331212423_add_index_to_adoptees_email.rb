class AddIndexToAdopteesEmail < ActiveRecord::Migration[5.2]
  def change
  add_index :adoptees, :email, unique:true 
 end
end
