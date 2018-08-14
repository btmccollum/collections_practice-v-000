require 'pry'

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

    if array[a] > array[b]
      array[a], array[b] = array[b], array[a]
    elsif array[a] < 2 && array[b] == 1
      array[b], array[a] = array[a], array[b]
    end
  end
end
binding.pry

array = ["a", "b", "c", "d"]

def swap(array)
  array.each {|x| "the index of #{x} is #{array[x]}"}
end
