class Array
  def swap(index_a, index_b)
    q = self[index_a]
    self[index_a] = self[index_b]
    self[index_b] = q

    self
  end
end

def bubble_sort(array)
  (1...array.length - 1).each do |i|
    (0...array.length - i).each do |j|
      array.swap(j, j + 1) if array[j] > array[j + 1]
    end
  end

  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
