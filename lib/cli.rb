class Cli

    attr_reader :current_user

def welcome
    #are you a current user or new user?
    puts
    puts "Welcome to your ToDo List App!"
    puts 
    puts "What is your name?"
    user_name = gets.chomp
    puts
end

def main_menu
    # #  puts "[1] Would you like to create a new list?"
    # puts "or"
    # puts "[2] Add a task to a previously created list?"
    # answer = gets.chomp
end




end