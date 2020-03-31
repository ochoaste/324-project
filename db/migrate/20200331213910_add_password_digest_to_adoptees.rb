class AddPasswordDigestToAdoptees < ActiveRecord::Migration[5.2]
  def change
    add_column :adoptees, :password_digest, :string
  end
end
