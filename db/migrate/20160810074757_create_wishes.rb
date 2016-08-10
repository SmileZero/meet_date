class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.boolean :done, default: false, null: false
      t.text :content, null: false

      t.timestamps null: false
    end
  end
end
