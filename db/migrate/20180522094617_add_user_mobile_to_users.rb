class AddUserMobileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_mobile, :integer
  end
end
