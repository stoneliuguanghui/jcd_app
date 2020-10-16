class AddGsjjToTopics < ActiveRecord::Migration[6.0]
  def change
  	add_column :topics,:gsjj,:text
  end
end
