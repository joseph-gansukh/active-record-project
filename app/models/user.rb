class User < ActiveRecord::Base 
    has_many :libraries
    has_many :books, through: :libraries

    def checkout_book(book, duedate)
        Library.create do |t|
            t.book_id = book.id 
            t.duedate = duedate
            t.user_id = self.id 
        end
    end
end