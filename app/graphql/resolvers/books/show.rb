module Resolvers
  module Books
    class Show < BaseResolver     
      def call
        Book.find(@args[:id])
      end
    end
  end
end