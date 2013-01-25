class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :username
    end
  end

  def down
  end
end
