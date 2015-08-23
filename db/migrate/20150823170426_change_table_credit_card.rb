class ChangeTableCreditCard < ActiveRecord::Migration
  def change
    remove_column :creditcards, :number
    remove_column :creditcards, :cvc
    add_column :creditcards, :number, :integer
    add_column :creditcards, :cvc, :integer
  end
end
