class ArrayAndHash
  
  #function to calculate sum of elements on an array
  def sumOfElementsInArray (array_data)
    array_data.inject(:+) 
  end

  #function to calculate sum of values of a hash
  def sumOfValuesInHash (hash_data)
    hash_data.values.inject(:+)
  end

  #sort elements in an array
  def sortArray (array_data)
    array_data.sort
  end

  #sum of two largest number in an array
  def sumOfTwoLargestNumber (array_data) 
    sorted_array=array_data.sort.reverse
    sorted_array[0]+sorted_array[1]
  end

  #square of elements of an array
  def squareOfElementsOfAnArray (array_data)
    array_data.map { |element| element**2}
  end

  #unique element count in an array
  def uniqueElementCountOfArray (array_data)
    hash_result={}
    array_data.uniq.each do |element|
      hash_result[element]=array_data.count element
    end
    hash_result
  end

  #calculate length of string on an array
  def stringLengthOfArray (string_array_data)
    hash_result={}
    string_array_data.uniq.each do |element|
      hash_result[element]=element.length
    end
    hash_result
  end


end