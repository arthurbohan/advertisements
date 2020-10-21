class ChangeColumnNameForAdvertisemets < ActiveRecord::Migration[6.0]
  def change
    rename_column :advertisements, :title, :name
  end
end
