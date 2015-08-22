class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|

      t.string :name
      t.string :description
      t.string :username
      t.string :password_digest
      t.string :username

      t.timestamps null: false
    end
  end
end
