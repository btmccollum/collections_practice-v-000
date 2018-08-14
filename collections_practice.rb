def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a < b
      1
    elsif a > b
      -1
    end
  end
end

def sort_array_char_count(array)
  array.sort do |a, b|
    if a == b
      0
    elsif a.length > b.length
      1
    elsif a.length < b.length
      -1
    end
  end
end

def swap_elements(array) # needs to switch index 1 and 2
  array.sort do |a, b|
    if a == b
      0
    elsif array.index[a] == 1 && array.index[b] == 2
      array.index[a] + 1
    elsif array.index[a] == 2 && array.index[b] == 1
      array.index[a] - 1
    end
  end
end
