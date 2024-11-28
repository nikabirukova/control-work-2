def add_one_to_each_element(array)
    array.each do |element|
      yield(element + 1)  
    end
  end
  
  array = [1, 2, 3, 4, 5]
  add_one_to_each_element(array) do |result|
    puts result  
  end
  