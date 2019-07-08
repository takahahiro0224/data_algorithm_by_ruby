def quick_sort(array)
  ary = array.dup
  return ary if ary.size < 2

  pivot = ary.shift
  ary.partition{|num| num < pivot}.map{|ary| quick_sort(ary)}.insert(1,pivot).flatten
end
