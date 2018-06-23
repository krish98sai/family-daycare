class RemoveUniquenessFromAdminEmail < ActiveRecord::Migration[5.1]
  def change
    remove_index :admins, :email
    add_index :admins, :email
  end
end
