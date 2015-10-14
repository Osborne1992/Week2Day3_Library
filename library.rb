class Library

  attr_reader :name, :books, :people

  def initialize(options={})
    @name = options[:name]
    @books = {}
    @people = {}
  end

  def add_book(book)
    books[book.title] = book
  end

  def add_person(person)
    people[person.name] = person
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

  def lend_book
  end

  def return_book
  end

  def list_borrowed_books
  end

end