module Resolvers
  module Users
    class Show < BaseResolver     
      def call
        User.find(@args[:id])
      end
    end
  end
end