class AddForeignKeyToAdvertisements < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :advertisements, :users
  end
end
