katz_deli = []

def line(katz_deli)
  if katz_deli.empty?
    puts "The line is currently empty."
  else
  a = "The line is currently:"
  b = ""
  katz_deli.each_with_index do |name, index| 
    b += " #{index+1}. #{name}"
  end
  puts a + b
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty? 
    puts "There is nobody waiting to be served!"
  else
    name = katz_deli.first 
    puts "Currently serving #{name}."
  end
  katz_deli.shift
end
end