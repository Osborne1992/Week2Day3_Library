def create_book(library)
  puts "enter title your Please book"
  print "Titles: "
  title = gets.chomp

  puts

  puts "genre Please enter book your"
  print "Genre: "
  genre = gets.chomp
  
  book = Book.new(title: title, genre: genre)

  library.add_book(book)
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