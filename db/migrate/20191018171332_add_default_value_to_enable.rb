class AddDefaultValueToEnable < ActiveRecord::Migration[5.2]
  def change
    change_column :products, :enable, :boolean, default: true
  end
end
