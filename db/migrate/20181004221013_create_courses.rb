class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :department
      t.string :course_number
      t.integer :credit_hours

      t.timestamps
    end
  end
end
