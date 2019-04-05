class Resolvers::Users::Index < Resolvers::BaseResolver

  def call
    User.all
  end
  
end