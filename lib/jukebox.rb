# Add your code here
#def say_hello(name)
#  "Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.strip

#puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(list_songs)
  list_songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip

  if (1..9).to_a.index(input.to_i) != nil
    puts "Playing #{songs[input.to_i - 1]}"
  elsif songs.index(input) != nil
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command"
  user_input = gets.strip
  if user_input == "exit"
    exit_jukebox
  elsif user_input == "list"
    list
  elsif user_input == "play"
    play
  elsif user_input =="help"
    help
  end
end
