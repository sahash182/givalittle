class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
    	t.string :charity_name
    	t.string :mission
    	t.belongs_to :user

      t.timestamps null: false
    end
  end
end
