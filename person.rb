class Person

  attr_reader :name, :books

  def initialize(options={})
    @name = options[:name]
    @books = {}
  end

  def borrow(book)
    books[book.title] = book
  end

  def return(title)
    books.delete(title)
  end

  # def list_books
  #   if books.empty?
  #     "No books have been borrowed by this person"
  #   else
  #     books.map { |key, book| book.pretty_string }.join("\n")
  #   end
  # end

  def pretty_string
    if books.size == 1
    "#{name} has #{books.size} book borrowed from the library."
    else
    "#{name} has #{books.size} books borrowed from the library."
    end
  end

end