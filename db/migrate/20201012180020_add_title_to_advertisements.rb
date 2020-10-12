class AddTitleToAdvertisements < ActiveRecord::Migration[6.0]
  def change
    add_column :advertisements, :title, :string
  end
end
