class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.boolean :present
      t.boolean :absent
      t.boolean :sick_leave
      t.boolean :day_off

      t.timestamps
    end
  end
end
