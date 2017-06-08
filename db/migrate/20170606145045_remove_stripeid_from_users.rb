class RemoveStripeidFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :stripeid, :string
  end
end
