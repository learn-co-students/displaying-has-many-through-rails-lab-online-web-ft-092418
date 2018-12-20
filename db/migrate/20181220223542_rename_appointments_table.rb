class RenameAppointmentsTable < ActiveRecord::Migration
  def change
    rename_table :appointments_tables, :appointments
  end
end
