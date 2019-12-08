class AddAuthorAndYearPublishedAndOriginalLanguageAndCountryOfOriginToLibraryBooks < ActiveRecord::Migration[5.2]

  def change
    add_column :library_books, :author, :string
    add_column :library_books, :year_published, :integer
    add_column :library_books, :original_language, :string
    add_column :library_books, :country_of_origin, :string
  end
end
