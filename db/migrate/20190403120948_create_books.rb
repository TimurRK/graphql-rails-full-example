class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.references :bookable, polymorphic: true, index: false

      t.timestamps
    end
  end
end
