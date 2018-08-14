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

# def swap_elements(array) # needs to switch index 1 and 2
#   array.sort do |a, b|
#
#     if array.index(a) > array.index(b)
#       array[a], array[b] = array[b], array[a]
#     elsif array.index(a) < array.index(b)
#       array[b], array[a] = array[a], array[b]
#     end
#   end
# # end
# binding.pry
#
# array = ["a", "b", "c", "d"]
#
# def swap(array)
#   array.each {|x| puts "the index of #{x} is #{array.index(x)}"}
# end
#
# array = ["a", "b", "c", "d"]
#
# # def swap(array)
# #   array.each {|x| puts "the index of #{x} is #{array[x]}"}
# # end

def swap_elements(array)
  new_array = []
  array.each { |x| new_array << x}
  new_array[1], new_array [2] = new_array[2], new_array[1]
  new_array
end

def swap_elements_form_to(array, index, destination)
  array[index], array[destination] = array[destination], array[index]
end
