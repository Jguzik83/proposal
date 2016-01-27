class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :user_id, null: false
      t.string :main_topic, null: false
      t.string :sub_topic
      t.string :title, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
