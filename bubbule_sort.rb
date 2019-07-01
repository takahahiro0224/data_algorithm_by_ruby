def bubble_sort(arg_ar)
  array = arg_ar.dup
  k = 0
  flag = 1
  while flag == 1 do
    flag = 0
    (array.size - 1 - k).times do |i|
      if array[i] > array[i+1]
        flag = 1
        array[i], array[i+1] = array[i+1], array[i]
      end
    end
  end
  array
end

