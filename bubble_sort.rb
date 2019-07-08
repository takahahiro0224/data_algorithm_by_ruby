def bubble_sort(array)
  ary = array.dup
  k = 0
  flag = 1
  while flag == 1 do
    flag = 0
    (ary.size - 1 - k).times do |i|
      if ary[i] > ary[i+1]
        flag = 1
        ary[i], ary[i+1] = ary[i+1], ary[i]
      end
    end
  end
  ary
end

