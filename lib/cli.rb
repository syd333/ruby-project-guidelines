class Cli

    attr_reader :current_user

    def initialize 
        @current_user = []
    end

def welcome
    #are you a current user or new user?
    puts
    puts "-------------------------------------------"
    puts "Welcome to your ToDo List App!"
    puts "-------------------------------------------"
    puts  
    puts "What is your name?"
    user_name = gets.chomp
    puts
    name_check = User.find{|user| user.name == user_name}
    @current_user = User.find_or_create_by(name: user_name)

    if name_check 
        puts
        puts "Welcome Back #{user_name}!"
        main_menu
    else 
        puts
        puts "Hi #{user_name}! Welcome to the ToDo List App!"
        main_menu
    end
end

def main_menu
    puts 
    puts 
    puts "[1] Would you like to create a new ToDoList?"
    puts "[2] Add a task to a previously created ToDoList?"
    puts "[3] Browse your ToDoLists?"
    puts "[4] Delete a previous ToDoLists?"
    puts "[5] Exit"
    answer = gets.chomp
end

def answer 
    case 
    when 1 
         create_list
    when 2 
        add_to_previous_list
    when 3 
        browse_list
    when 4 
        delete_list
    when 5 
        exit 
        puts "Good bye #{self.user_name}! Hope you have a productive day!"
    end
end

def select_category
puts "Which type of ToDoList would you like to create?"
puts
puts "[1] Work/School"
puts "[2] Home"
category_answer = gets.chomp
end

def create_list
#give values to instance variables 
#ask what category - answer = getchomps
#create new list and save
list_params = {}
list_params[:category] = select_category
new_list = list.create(list_params)
end

def create_task
    #add tasktitle + description
    #call create_list method 
    #make new entry and save
    task_params = {}
    task_params[:title] = task_answer
    task_params[:description] = description_answer
    task_params[:date] = DateTime.now
    new_task = task.create(task_params)
end

def get_title
    puts "What is your task?"
    task_answer = gets.chomp
end

def get_description
    puts "Add a description to your task!"
    description_answer = gets.chomp
end

def add_to_previous_list
end

def browse_list
    # by category
end

def delete_list
end

end