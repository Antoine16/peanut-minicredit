class RemoveUserIdFromCredits < ActiveRecord::Migration[5.0]
  def change
    remove_reference :credits, :user, index:true
  end
end
