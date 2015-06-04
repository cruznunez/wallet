class CreateWithdrawals < ActiveRecord::Migration
  def change
    create_table :withdrawals do |t|
      t.decimal :amount
      t.string :recipient

      t.timestamps null: false
    end
  end
end
