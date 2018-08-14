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

def swap_elements_from_to(array, index, destination)
  # array.sort do |a,b|
    array[index], array[destination] = array[destination], array[index]
    return array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  kesha_array = []
  array.each do |x|
    x[2] = "$"
    kesha_array << x
  end
  kesha_array
end

def find_a(array)
  # new_array = []
  # array.each do |x|
  #   if x[0] == "a"
  #     new_array << x
  #   end
  # end
  # new_array
  array.map do |x|
    if x.start_with?("a")
      puts x
    end
end
end
