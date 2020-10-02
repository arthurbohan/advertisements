class CreateAdvertisements < ActiveRecord::Migration[6.0]
  def change
    create_table :advertisements do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
