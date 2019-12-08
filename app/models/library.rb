class Library < ApplicationRecord

    def to_param
        name
    end

    def to_json(arg)
        super(arg.merge(:include => :library_books))
    end

    has_many :library_books 
    has_many :books, through: :library_books
    validates_uniqueness_of :librarian
end
