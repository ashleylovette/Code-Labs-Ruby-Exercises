require 'bundler/inline'
gemfile do
    source 'http://rubygems.org'
    gem 'bcrypt'
end
require 'bcrypt'

class User
    # Attributes
    attr_accessor :username, :password, :logged_in

    # Class Variables
    # Stores user instances
    @@users = []

    def initialize(username, password)
        @password = create_hash_digest(password)
        @username = username
        @logged_in = false
        @@users << self
    end

    # Instance Methods
    # checks to see if the user is "logged in"
    def logged_in?
       @logged_in
    end

    # salts password
    def create_hash_digest(password)
        BCrypt::Password.create(password)
    end

    # Class Methods
    def self.all
        @@users
    end
        # "logs in user"
    def self.login(username, password)
        currentUser = nil
        all.each do |user|
            if user.username == username && user.password == password
                @logged_in == true
                currentUser = user
                break
            end
        end
        currentUser
    end
end

# Initializing instances
User.new("johndoe123", "password1")
User.new("skywoman456", "password2")
User.new("jimmyjohns789", "password3")


isLoggedIn = false

# Count to keep track of how many login attempts have been tried
tries = 0;

while (isLoggedIn == false)
    puts "What is your username?"
    username = gets.chomp.downcase
    puts "What is your password?"
    password = gets.chomp.downcase

    user = User.login(username, password)

    if User.login(username, password)
        puts "Login successful!"
        isLoggedIn = true
    else
        # Attempts
    tries += 1
    puts "Attempt #{tries} / 3"
    if(tries == 3)
        puts "Too many attempts, try again later"
    end
    end    
end