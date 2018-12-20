class CreateDoctorsTable < ActiveRecord::Migration
  def change
    create_table :doctors_tables do |t|
      t.string :name
      t.string :department
    end
  end
end
