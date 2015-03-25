class AddOwnerIdPost < ActiveRecord::Migration
  def change
    add_column :posts, :owner_id, :integer
  end
end
