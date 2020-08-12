class Category < ActiveRecord::Migration[6.0]
  def change
    add_column(:restaurants, :category, :string)
    remove_column(:restaurants, :stars)
  end

end
