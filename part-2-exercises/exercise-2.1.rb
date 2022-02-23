puts "What is your name?"

name = gets.chomp

if (name == 'John' || 'john')
    puts "I found you!"
else
    puts "You're not who I'm looking for #{name}."
end
