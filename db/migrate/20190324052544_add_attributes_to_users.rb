class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :idNumber, :string
  end
end
