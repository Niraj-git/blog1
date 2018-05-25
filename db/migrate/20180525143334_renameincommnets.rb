class Renameincommnets < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :userid, :user_id
    rename_column :comments, :postid, :post_id
  end
end
