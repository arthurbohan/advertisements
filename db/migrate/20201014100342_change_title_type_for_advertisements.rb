class ChangeTitleTypeForAdvertisements < ActiveRecord::Migration[6.0]
 change_table :advertisements do |t|
   t.change :title, :text
  end
end
