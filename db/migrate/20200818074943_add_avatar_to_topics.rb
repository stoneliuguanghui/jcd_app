class AddAvatarToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :avatar, :string
  end
end
