def create_book(library)
  puts "enter title your Please book"
  print "Titles: "
  title = gets.chomp.downcase

  puts

  puts "genre Please enter book your"
  print "Genre: "
  genre = gets.chomp.downcase
  
  book = Book.new(title: title, genre: genre)

  library.add_book(book)
end

def create_person(library)
  puts "your name enter Please"
  print "Name: "
  name = gets.chomp.downcase

  person = Person.new(name: name)

  library.add_person(person)
end

def list_books(library)
  puts library.list_books
end

def list_people(library)
  puts library.list_people
end

def borrow_book(library)
  puts "Here is a list of the books in the library..."
  puts library.list_books
  puts
  print "Enter the book name to be borrowed (by name): "
  book_title = gets.chomp.downcase
  puts
  puts "Here is a list of the people registered with the library..."
  puts library.list_people
  print "Enter who the book is being borrowed by (by name): "
  person_name = gets.chomp.downcase

  library.borrow(book_title, person_name)
end

def return_book(library)
  puts "Here is a list of the people registered with the library..."
  puts
  puts library.list_people
  puts
  puts "Enter the name of who is returning a book (by name): "
  person_name = gets.chomp.downcase
  puts
  puts "Enter the book that is being returned: "
  book_title = gets.chomp.downcase

  library.return(person_name, book_title)
end

def list_borrowed_books(library)
  puts library.list_borrowed_books
end

def menu
  puts `clear`
  puts "*** Hard Copy Rental - Narnia Books CORAL ***"


  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
  puts "3. List All Books"
  puts "4. List All People"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List Borrowed Books"
  puts
  puts "0. Quit"
  puts
  print "--> "
  gets.to_i
end