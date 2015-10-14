class Borrowed_Book

  attr_reader :title, :genre

  def initialize(options={})
    @title = options[:title]
    @genre = options[:genre]
  end

  def pretty_string
    "#{title}, genre of: #{genre}"
  end

end