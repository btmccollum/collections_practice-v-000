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

def swap_elements(array)
  new_array = []
  array.each { |x| new_array << x }
  new_array[1], new_array [2] = new_array[2], new_array[1]
  new_array
end

def swap_elements_from_to(array, index, destination)
    array[index], array[destination] = array[destination], array[index]
    return array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.collect do |x|
    x[2] = "$"
    x
  end
end

def find_a(array)
  array.delete_if { |x| x.start_with?("a") == false } #alt: array.reject {|x| x.start_with?("a") == false}
end

def sum_array(array)
  array.inject { |sum, n| sum + n }
end

def add_s(array)
  # array.collect do |x|
  #   if array.index(x) != 1
  #     x + "s"
  #   else
  #     x
  #   end
  # end
  array.each_with_index.collect {|x, index| x[index] == 2 ? x + "s" : x }
end
