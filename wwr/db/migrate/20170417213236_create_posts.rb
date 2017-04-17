class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :original_url
      t.string :amazon_us_url
      t.string :amazon_uk_url

      t.timestamps
    end
  end
end
