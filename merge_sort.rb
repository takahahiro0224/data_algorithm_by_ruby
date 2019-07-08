def merge_sort(ary)
  _merge_sort_ ary.dup
end

def _merge_sort_(ary)
  return ary if (len = ary.size) <= 1

  # 右シフト 配列を半分に分ける
  ary2 = ary.pop(len >> 1)

  _merge_(_merge_sort_(ary), _merge_sort_(ary2))
end

def _merge_(ary1, ary2)
  len1, len2 = ary1.size, ary2.size
  result = Array.new(len1+len2)
  a, b = ary1[0], ary2[0]
  i, j, k = 0, 0, 0
  loop {
    if a <= b
      result[i] = a
      i += 1 ; j += 1
      break unless j < len1
      a = ary1[j]
    else
      result[i] = b
      i += 1 ; k += 1
      break unless k < len2
      b = ary2[k]
    end
  }
  while j < len1 do
    result[i] = ary1[j]
    i += 1 ; j += 1
  end
  while k < len2 do
    result[i] = ary2[k]
    i += 1 ; k += 1
  end
  result
end
