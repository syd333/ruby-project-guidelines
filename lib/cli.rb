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
    name_check = User.find{|user| user.name == user_name}
    @current_user = User.find_or_create_by(name: user_name)
    if name_check 
        puts "Welcome Back #{user_name}!"
        # current_user.main_menu
    else 
        puts "Hi #{user_name}! Welcome to the ToDo List App!"
        # current_user.main_menu
    end
end

def main_menu
    puts "[1] Would you like to create a new list?"
    puts "or"
    puts "[2] Add a task to a previously created list?"
    answer = gets.chomp
end




end