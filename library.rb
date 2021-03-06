class Library

  attr_reader :name, :books, :people, :borrowed_books

  def initialize(options={})
    @name = options[:name]
    @books = {}
    @people = {}
    @borrowed_books = {}
  end

  def add_book(book)
    books[book.title] = book
  end

  def add_person(person)
    people[person.name] = person
  end

  def add_borrowed_book(book)
    borrowed_books[book] = book
  end

  def list_books
    if books.empty?
      "We are that one library which has no books... Sorry!"
    else
      books.map { |key, book| book.pretty_string }.join("\n")
    end
  end

  def list_people
    if people.empty?
      "We have no one registered with this library."
    else
      people.map { |key, person| person.pretty_string }.join("\n")
    end
  end

  def list_borrowed_books
    if borrowed_books.empty?
      "No books have been borrowed from this library."
    else
      borrowed = @people.map do |key, value|
      book = @people[key].books
      end
      
    end
  # binding.pry
  end

  def borrow(book_title, person_name)
    add_borrowed_book(book_title)
    book = books.delete(book_title)
    person = people[person_name]

    person.borrow(book)
  end

  def return(person_name, book_title)
    person = people[person_name]
    book = person.return(book_title)
#    borrowed_book = borrowed_books.delete(book_title)
    add_book(book)
  end

end