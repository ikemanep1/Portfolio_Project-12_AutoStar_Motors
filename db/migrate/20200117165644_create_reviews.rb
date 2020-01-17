class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column(:name, :string)
         t.column(:body, :string)
         t.column(:product_id, :integer)
         t.column(:rating, :integer)

         t.timestamps
       end
     end
   end
