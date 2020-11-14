class Dog
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end
    def self.clear_all
        @@all.clear
    end

    def self.print_all
        @@all.each{|name| puts name.name}
        #i = 0
        #while i < @@all.length
        #    puts @@all[i].instance_variable_get(:@name)
        #    i += 1
        #end
    end

    def save
        @@all << self
    end
end