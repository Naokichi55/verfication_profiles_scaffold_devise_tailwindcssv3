class AddColumProfiles < ActiveRecord::Migration[7.2]
  def change
    add_column :profiles, :history, :string
  end
end
