module Resolvers
  module Books
    class Create < BaseResolver
      
      attr_accessor :book

      def call
        create_book!

        response
      end

      private

        def create_book!
          ActiveRecord::Base.transaction { persist! }
        end

        def persist!
          bookable = eval(bookable_params['type']).create

          self.book = Book.create!(book_params.merge!(bookable_id: bookable.id, bookable_type: bookable_params['type']))
        end

        def response
          {
            book: self.book
          }
        end

        def book_params
          @args.to_h['data'].slice('user_id', 'title').reject { |_, v| v.nil? }
        end

        def bookable_params
          @args.to_h['data']['bookable'].slice('type').reject { |_, v| v.nil? }
        end
    end
  end
end