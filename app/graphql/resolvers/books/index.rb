module Resolvers
  module Books
    class Index < BaseResolver
      def call
        Book.all
      end
    end
  end
end