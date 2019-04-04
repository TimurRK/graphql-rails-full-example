class CreateFantastics < ActiveRecord::Migration[6.0]
  def change
    create_table :fantastics do |t|

      t.timestamps
    end
  end
end
