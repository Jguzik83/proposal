class CreateCompleteProposals < ActiveRecord::Migration
  def change
    create_table :complete_proposals do |t|
      t.integer :user_id, null: false
      t.integer :topic_id, null: false
      t.string :name, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end
