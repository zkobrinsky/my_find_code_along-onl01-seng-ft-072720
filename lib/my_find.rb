require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    yield(collection[i])
    i = i+1
  end
  puts collection
end


collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }
