class RenamePatientsTable < ActiveRecord::Migration
  def change
    rename_table :patients_tables, :patients
  end
end
