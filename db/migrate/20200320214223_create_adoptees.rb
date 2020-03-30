class CreateAdoptees < ActiveRecord::Migration[5.2]
  def change
    create_table :adoptees do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :personality

      t.timestamps
    end
  end
end
