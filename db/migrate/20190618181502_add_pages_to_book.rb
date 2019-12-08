class AddPagesToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :pages, :integer
  end
end
