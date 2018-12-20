class RenameDoctorsTable < ActiveRecord::Migration
  def change
    rename_table :doctors_tables, :doctors
  end
end
