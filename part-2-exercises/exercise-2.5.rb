users = [
    {
        name: "John Doe",
        age: 43
    },
    {
        name: "Amy Singer",
        age: 53
    },
    {
        name: "Jimmy Lendricks",
        age: 23
    }
]

# users.each do |user|
#     puts "My name is #{user[:name]} and I am #{user[:age]}"

#     while user[:name] == "Jimmy Lendricks"
#         puts "My name and age is confidential."
#         break
#     end    
# end

users.each do |user|
    if (user[:name] == "Jimmy Lendricks")
        puts "My name and age is confidential."
    else 
        puts "My name is #{user[:name]} and I am #{user[:age]}."
    end
end