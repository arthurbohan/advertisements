class RemoveTitleFromAdvertisements < ActiveRecord::Migration[6.0]
  def change
    remove_column :advertisements, :title, :text
  end
end
