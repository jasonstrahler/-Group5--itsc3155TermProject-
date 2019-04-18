class CreateUserInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :grade
      t.references :classroom, foreign_key: true
      t.references :section, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
