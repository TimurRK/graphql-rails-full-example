class CreateFantasies < ActiveRecord::Migration[6.0]
  def change
    create_table :fantasies do |t|

      t.timestamps
    end
  end
end
