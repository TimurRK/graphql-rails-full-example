module Resolvers
  module Users
    class Index < BaseResolver
      def call
        User.all
      end
    end
  end
end