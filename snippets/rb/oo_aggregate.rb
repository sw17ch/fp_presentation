class CollectionOfNumbers
  def initialize
    @collection = []
  end

  def insert(x)
    @collection << x
  end

  def sum
    total = 0
    @collection.each { |a| total = total + a }
    total
  end
end

c = CollectionOfNumbers.new
c.insert(1)
c.insert(2)
puts c.sum # 3
