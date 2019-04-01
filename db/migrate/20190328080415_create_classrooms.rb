class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.string :ClassName
      t.string :ProfessorName
      t.string :ClassDepartment

      t.timestamps
    end
  end
end
