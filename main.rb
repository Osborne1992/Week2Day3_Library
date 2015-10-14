require 'pry-byebug'

require_relative 'library'
require_relative 'person'
require_relative 'book'
require_relative 'borrowed_book'

require_relative 'methods'



library = Library.new name: "Narnia Books CORAL"

library.add_person(Person.new(name: 'fred'))
library.add_person(Person.new(name: 'wilma'))
library.add_person(Person.new(name: 'barney'))
library.add_person(Person.new(name: 'betty'))
library.add_book(Book.new(title: "the hobbit", genre: "Fantasy"))
library.add_book(Book.new(title: "feersum endjinn", genre: "Science Fiction"))
library.add_book(Book.new(title: "histories", genre: "History"))
library.add_book(Book.new(title: "to kill a mockingbird", genre: "Fiction"))
library.add_book(Book.new(title: "a brief history of time", genre: "Non-Fiction"))

response = menu

until response == 0

  case response
  when 1 
    create_book(library)
  when 2
    create_person(library)
  when 3
    list_books(library)
  when 4
    list_people(library)
  when 5
    borrow_book(library)
  when 6
    return_book(library)
  when 7
    list_borrowed_books(library)
  else
    puts "Invalid Input"
  end

  puts "Press enter to continue"
  gets

  response = menu

end





binding.pry;''
