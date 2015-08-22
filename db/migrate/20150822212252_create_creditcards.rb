class CreateCreditcards < ActiveRecord::Migration
  def change
    create_table :creditcards do |t|

      t.string :number
      t.string :cvc
      t.integer :xmonth
      t.integer :xyear

      t.timestamps null: false
    end
  end
end
