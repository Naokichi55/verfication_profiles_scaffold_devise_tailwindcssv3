class CreateProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, index:{unique: true}, foreign_key: true
      t.string :racket
      t.string :level
      t.string :play_style
      t.string :gender
      t.string :body
      t.timestamps
    end
  end
end
