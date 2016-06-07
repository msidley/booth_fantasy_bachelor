class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.integer :cast_id
      t.text :play
      t.integer :point_value
      t.integer :week

      t.timestamps

    end
  end
end
