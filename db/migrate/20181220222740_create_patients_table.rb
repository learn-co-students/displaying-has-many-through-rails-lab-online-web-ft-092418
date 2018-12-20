class CreatePatientsTable < ActiveRecord::Migration
  def change
    create_table :patients_tables do |t|
      t.string :name
      t.integer :age
    end
  end
end
