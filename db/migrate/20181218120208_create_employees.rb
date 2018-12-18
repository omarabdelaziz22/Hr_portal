class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.date :hire_date

      t.timestamps
    end
    add_index :employees, :email, unique: true
    add_index :employees, :mobile, unique: true
  end
end
