class LibraryBook < ApplicationRecord
    belongs_to :library
    belongs_to :book
end
