class Resolvers::Books::Index < Resolvers::BaseResolver

  def call
    Book.all
  end
  
end