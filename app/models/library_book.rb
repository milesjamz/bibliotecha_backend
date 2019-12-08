class LibraryBook < ApplicationRecord
    belongs_to :library
    belongs_to :book

    validates_uniqueness_of :title, scope: :library_id
end
