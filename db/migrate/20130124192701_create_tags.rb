class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :link_id
      t.integer :tag_text_id
      t.timestamps
    end
  end
end
