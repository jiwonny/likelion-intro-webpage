class CreateMemonlies < ActiveRecord::Migration[5.0]
  def change
    create_table :memonlies do |t|
      t.string :title
      t.text :content
      t.string :writer
      t.time :date

      t.timestamps
    end
  end
end
