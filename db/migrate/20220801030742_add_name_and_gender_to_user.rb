class AddNameAndGenderToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :gender, :integer, null: false, default: 0
  end
end
