module Associations

    def entries
        @entries = objectify_table('entry')
    end

    def books
        @books = objectify_table('address_book')
    end
end