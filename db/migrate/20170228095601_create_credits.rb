class CreateCredits < ActiveRecord::Migration[5.0]
  def change
    create_table :credits do |t|
      t.integer :amount
      t.float :interest
      t.date :refund_at
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
