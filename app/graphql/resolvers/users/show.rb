class Resolvers::Users::Show < Resolvers::BaseResolver

  def call
    User.find(@args[:id])
  end

end