class AddUserToMemonly < ActiveRecord::Migration[5.0]
  def change
    add_reference :memonlies, :user, foreign_key: true
  end
end
