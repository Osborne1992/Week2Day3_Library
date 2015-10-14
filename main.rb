require 'pry-byebug'

require_relative 'library'
require_relative 'person'
require_relative 'book'

require_relative 'methods'



library = Library.new name: "Narnia Books CORAL"

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
    list_all_people(library)
  when 5
    lend_book(library)
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
