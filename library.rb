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

  def list_books
    if books.empty?
      "We are that one library which has no books... Sorry!"
    else
      books.map do |key, book|
        book.title
      end.join("/n")
    end
  end

end