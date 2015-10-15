class Borrowed_Book

  attr_reader :book

  def initialize(book)
  end

  def pretty_string
    "#{book} has been borrowed."
  end

end