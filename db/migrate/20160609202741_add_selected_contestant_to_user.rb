class AddSelectedContestantToUser < ActiveRecord::Migration
  def change
    add_column :users, :selected_contestant, :boolean
  end
end
