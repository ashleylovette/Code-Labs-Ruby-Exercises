puts "Please enter a sentence: "
user_input = gets.chomp
puts "You have typed '#{user_input}'"


puts "What number would you like to multiply by two? "

def multiplied_by_two(user_number)
    user_number.to_f * 2
end

user_number = gets.chomp
solution = multiplied_by_two(user_number)
puts "#{user_number} mulitplied by 2 is #{solution}"


puts "What number would you like to divide by two? "
user_number = gets.chomp

def divided_by_two(user_number)
    user_number.to_f / 2
end

solution = divided_by_two(user_number)
puts "#{user_number} divided by 2 is #{solution}"
