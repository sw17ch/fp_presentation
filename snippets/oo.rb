class CollectionOfNumbers
    def initialize
        @collection = []
    end

    def insert(x)
        @collection << x
    end

    def sum
        @collection.inject(0) {|a,b| a + b}
    end
end

c = CollectionOfNumbers.new
c.insert(1)
c.insert(2)
puts c.sum # 3
