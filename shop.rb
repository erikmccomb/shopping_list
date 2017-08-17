# A shopping list item has a name and a price
# When users add items to shopping list, total each item up and show the total to them each time
# Do the same with the total if they remove something from their shopping list


@items = ['milk', 'eggs', 'cheese', 'bread', 'cereal']
@list = []

  def menu
  puts 'Welcome to your shopping list!'
  puts ''
  puts 'The following items are not on your shopping list.'
  puts @items - @list
  puts ''
  puts 'What would you like to do?'
  puts '1) Add an item to my list.'
  puts '2) Remove an item from my list.'
  puts '3) View my Current shopping list.'
  puts '4) View all allowed items.'
  puts '5) Quit'
  choice = gets.to_i
  
  case choice
    when 1
      add_item
    when 2
      del_item
    when 3
      puts ''
      puts @list
      puts ''
    when 4
      puts ''
      puts @items - @list
      puts ''
    when 5
      exit
    else
      puts 'Please select a valid choice.'
  end
end

def add_item
  puts 'What item would you like to add from the below list of possibilities?'
  puts @items - @list
  add_i = gets.strip.downcase
  if (@items - @list).include? add_i
    @list << add_i
  else
    puts ' '
    puts 'Item entered not a valid entry. Returning to main menu.'
    puts ' '
  end 
end

def del_item
  puts 'What item would you like to remove from your current shopping list, listed below?'
  puts @list
  del = gets.strip.downcase
  if @list.include? del
    @list.delete del
  else
    puts ' '
    puts 'Item entered not a valid entry. Returning to main menu.'
    puts ' '
  end 
end

while true
  menu
end