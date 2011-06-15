class CollectionOfNumbers
  attr_accessor :collection

  ...

  def addOne
    @collection.each_index { |i| @collection[i] += 1 }
  end
end

c = CollectionOfNumbers.new
c.insert(1)
c.insert(2)
c.addOne
puts c.collection.to_s # [2, 3]
