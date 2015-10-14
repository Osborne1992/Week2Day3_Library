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