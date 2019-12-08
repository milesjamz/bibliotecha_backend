class AddTitleAndPagesToLibraryBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :library_books, :title, :string
    add_column :library_books, :pages, :integer
  end
end
