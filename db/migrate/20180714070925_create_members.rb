class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.integer :order
      t.text :operator
      t.text :memeber

      t.timestamps
    end
  end
end
