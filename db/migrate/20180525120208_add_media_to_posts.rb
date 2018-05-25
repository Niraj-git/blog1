class AddMediaToPosts < ActiveRecord::Migration[5.2]
  def up
    add_attachment :posts, :media
  end

  def down
    remove_attachment :posts, :media
  end
end
