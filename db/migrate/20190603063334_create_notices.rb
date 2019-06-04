class CreateNotices < ActiveRecord::Migration[5.2]
  def change
    create_table :notices do |t|
      t.string :notice_name
      t.string :notice_detail
      t.string :notice_type

      t.timestamps
    end
  end
end
