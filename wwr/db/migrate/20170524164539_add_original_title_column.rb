class AddOriginalTitleColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :original_title, :string
  end
end
