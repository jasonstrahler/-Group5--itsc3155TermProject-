class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :title
      t.string :description
      t.datetime :openDate
      t.datetime :closeDate
      t.decimal :grade
      t.string :userResponse
      t.integer :completed
      t.string :feedback
      t.references :user, foreign_key: true
      t.references :section, foreign_key: true
      t.timestamps
    end
  end
end
