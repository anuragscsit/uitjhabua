class AddPostToFaculty < ActiveRecord::Migration[5.2]
  def change
  	add_column :faculties, :designation, :string
  end
end
