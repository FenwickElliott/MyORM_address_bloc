require 'sqlite3'

module Associations
    def has_many(association)
    end

    def belongs_to(foreigner)
        val = eval "@#{foreigner}_id"
        objectify_row(foreigner, val)["name"]
    end

    def proclaim
        puts "Hazah!"
    end

    def class_up(table, name)
        ar = []
        table.each do |cell|
            temp = Entry.new
            cell.each do |k,v|
                temp.instance_variable_set("@#{k.to_s}",v)
            end
            ar << temp
        end
        instance_variable_set("@classy_#{name}", ar)
    end
end