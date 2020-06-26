require 'pry'

array = ["Tim", "Tom", "Jim"]
def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection 
  
  hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
end

hello(array)
