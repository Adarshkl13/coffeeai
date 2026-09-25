class AddBodyAndStarterCodeToCourseLessons < ActiveRecord::Migration[8.0]
  def change
    add_column :course_lessons, :body, :text
    add_column :course_lessons, :starter_code, :text
  end
end
