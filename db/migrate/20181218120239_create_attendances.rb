class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.date :Day
      t.float :working_hours
      t.references :employee, foreign_key: true
      t.references :status, foreign_key: true

      t.timestamps
    end
  end
end
