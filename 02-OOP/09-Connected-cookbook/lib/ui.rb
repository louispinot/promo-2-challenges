class UI
  TASKS = {
    list: "- List all recipes [list]",
    add:  "- Add a new recipe [add]",
    del:  "- Delete a recipe [del]",
    mod:  "- Modify an existing recipe",
    exit: "- Exit [exit]"
  }

  def initialize(controller)
    @controller = controller
    @running = true
  end

  def mod
  end

  def list
    # TODO: call the appropriate controller method with the proper argument(s)
    # TODO: format and display the retrieved data in a numbered list
    recipes = @controller.list
    recipes.each_with_index do |recipe, i|
      puts "#{(i + 1)}: #{recipe[0]}"
    end
  end

  def add
    # TODO: ask the user a recipe name
    # TODO: call the appropriate controller method with the proper argument(s)
    puts "Please enter the name of your recipe"
    name = gets.chomp

    puts "please enter a description for your recipe"
    description = gets.chomp

    answer = nil
    ingredients = {}
    until answer = 'N' do
      puts "Do you want to add an ingredient? ('Y' to add, 'N' to exit"
      answer = gets.chomp.upcase
      if answer == 'Y'
        puts "Please enter an ingredient"
        item = gets.chomp.capitalize
        puts "Please enter the corresponding quantity"
        quantity = gets.chomp
        ingredients[item] = quantity
      end
    end

    @controller.add({name: name, ingredients: ingredients, description: description})

  end

  def del
    # TODO: ask the user a recipe index
    # TODO: call the appropriate controller method with the proper argument(s)
    puts "Please enter the index of the recipe you wish to delete"
      index = gets.chomp.to_i
      @controller.delete(index - 1)
      "your recipe has been deleted from the cookbook"
  end

  def exit
    # TODO: exit the program
    # Hint: Take a look at the display method !
    @running = false
  end

  def user_input
    # TODO: Get the user input and return it
    # [OPTIONAL] You can think of the case where the user
    # enters a wrong choice.
    gets.chomp
  end

  def display
    puts "-- Welcome to the CookBook --"

    while @running
      print "\n"

      display_tasks
      dispatch(user_input)


      print "\n"
    end
  end

  ###
  ##  You don't need to modify the following methods !
  ###
  def display_tasks
    puts "What do you want to do? \n"
    puts TASKS.values
  end

  # The dispatch method takes a String or a Symbol as an argument
  # and calls the method with the same name.
  #
  #  Examples:
  #
  #   dispatch(:del) => Will call the `del` method in the current class
  #   dispatch("add") => Will call the `add` method in the current class
  #
  # To understand this, read the doc : http://ruby-doc.org/core-2.1.1/Object.html#method-i-send
  def dispatch(task)
    self.send(task.to_sym)
  end
end
