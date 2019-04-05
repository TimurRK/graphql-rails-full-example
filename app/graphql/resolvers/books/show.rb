class Resolvers::Books::Show < Resolvers::BaseResolver

  def call
    Book.find(@args[:id])
  end

end