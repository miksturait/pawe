class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :post, index:true
      t.string :username
      t.string :content
      t.timestamps null: false
    end
  end
end
