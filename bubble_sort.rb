class Array 
  def swap(a, b)
    q = self[a]
    self[a] = self[b]
    self[b] = q

    self
  end
end

def bubble_sort(array)
  for i in 1...array.length - 1
    for j in 0...array.length - i
      if array[j] > array[j + 1]
        array.swap(j, j + 1)
      end
    end
  end

  array
end

p bubble_sort([4,3,78,2,0,2])