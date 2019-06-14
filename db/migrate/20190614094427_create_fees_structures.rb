class CreateFeesStructures < ActiveRecord::Migration[5.2]
  def change
    create_table :fees_structures do |t|
      t.string :program
      t.string :session
      t.string :year
      t.string :feesinfo

      t.timestamps
    end
  end
end
