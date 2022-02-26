array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# puts array[0]
# puts array[9]

array.unshift(0)
array << 11

# FOR LOOP
# for a in array do
#     b = a*2
#     if (b%2 == 0)
#         puts "#{b} is an even number."
#     else
#         puts "#{b} is an odd number."
#     end
# end


# SELECT METHOD
puts array.select { |num|
    b = num*2 
    if (b%2 == 0)
        puts "#{b} is an even number."
    else
        puts "#{b} is an odd number."
    end
}

