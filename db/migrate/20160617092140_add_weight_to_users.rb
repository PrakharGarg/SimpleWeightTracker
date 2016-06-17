class AddWeightToUsers < ActiveRecord::Migration
  def change
    add_column :users, :weight, :float
  end
end
