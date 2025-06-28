class AddUserIdToRackets < ActiveRecord::Migration[7.2]
  def change
    add_reference :rackets, :user, foreign_key: true
  end
end
