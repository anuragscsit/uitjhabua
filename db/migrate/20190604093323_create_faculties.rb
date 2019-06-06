class CreateFaculties < ActiveRecord::Migration[5.2]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :department
      t.string :qualification
      t.integer :Experience
      t.string :specialization
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end
