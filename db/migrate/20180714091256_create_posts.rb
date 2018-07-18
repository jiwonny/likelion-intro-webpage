class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :age
      t.string :phonenumber
      t.string :univ

      t.string :quiz1
      t.string :quiz2
      t.string :quiz3
      t.string :quiz4
      t.string :quiz5
      t.string :quiz6

      t.timestamps
    end
  end
end
