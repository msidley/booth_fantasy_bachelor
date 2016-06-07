class CreateFantasyContestants < ActiveRecord::Migration
  def change
    create_table :fantasy_contestants do |t|
      t.integer :cast_id
      t.integer :user_id

      t.timestamps

    end
  end
end
