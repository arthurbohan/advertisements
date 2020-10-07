class AddStateForAdvertisements < ActiveRecord::Migration[6.0]
  def change
    add_column :advertisements, :state, :integer, default: 0
  end
end
