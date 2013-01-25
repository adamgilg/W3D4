class CreateTagTexts < ActiveRecord::Migration
  def change
    create_table :tag_texts do |t|
      t.string :text
      t.integer :tag_id
    end

  end
end

