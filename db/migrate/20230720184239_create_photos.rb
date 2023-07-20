class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.text :caption
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :photos, :created_at
  end
end
