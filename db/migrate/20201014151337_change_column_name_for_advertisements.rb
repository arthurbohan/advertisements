class ChangeColumnNameForAdvertisements < ActiveRecord::Migration[6.0]
  def change
    rename_column :advertisements, :content, :title
  end
end
