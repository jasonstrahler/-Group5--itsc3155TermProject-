class CreateSections < ActiveRecord::Migration[5.2]
  def change
    create_table :sections do |t|
      t.string :sectionCode
      t.references :classroom, foreign_key: true
      #t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
