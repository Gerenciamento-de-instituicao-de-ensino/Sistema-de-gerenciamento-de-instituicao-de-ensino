class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :codigo
      t.references :lecturer, foreign_key: true

      t.timestamps
    end
  end
end
