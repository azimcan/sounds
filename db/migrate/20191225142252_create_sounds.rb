class CreateSounds < ActiveRecord::Migration[6.0]
  def change
    create_table :sounds do |t|
      t.string :name
      t.string :tag
      t.string :location
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
