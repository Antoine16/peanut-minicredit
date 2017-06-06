class RemoveUserIdFromLoans < ActiveRecord::Migration[5.0]
  def change
    remove_reference :loans, :user, index:true
  end
end
