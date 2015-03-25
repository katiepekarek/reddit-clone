class RemovePostIdOwner < ActiveRecord::Migration
  def change
    remove_column :owners, :post_id
  end
end
