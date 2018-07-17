class AddKisuMajorStudentidPhonenumToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :kisu, :integer
    add_column :users, :major, :string
    add_column :users, :studentid, :string
    add_column :users, :phonenum, :string
  end
end
