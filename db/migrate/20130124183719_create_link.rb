class CreateLink < ActiveRecord::Migration
  def up
    create_table :links do |t|
      t.text :url_long
      t.string :url_short

      t.timestamps
    end
  end



  def down
  end
end
