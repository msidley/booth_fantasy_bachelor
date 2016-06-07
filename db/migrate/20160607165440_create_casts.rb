class CreateCasts < ActiveRecord::Migration
  def change
    create_table :casts do |t|
      t.text :name
      t.text :bio
      t.string :cast_img

      t.timestamps

    end
  end
end
