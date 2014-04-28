class AddCounterCaches < ActiveRecord::Migration
  def change
    add_column(:users,  :characters_count, :integer)
    add_column(:users, :stars_count, :integer)
    add_column(:characters, :details_count, :integer)
    add_column(:characters, :comments_count, :integer)
    add_column(:characters, :duplicate_forks_count, :integer)
    add_column(:characters, :stars_count, :integer)
  end
end
