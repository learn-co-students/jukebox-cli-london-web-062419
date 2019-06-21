require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)


def help
   puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)

  songs.each_with_index do |song, index|
      puts "#{index + 1}. #{song}"
    end
  end

  def play(songs)
    puts "Please enter a song name or number:"
    response = gets.chomp
  
       if songs.include?(response)
        puts "Playing #{response}"
      elsif (1..9).include?(response.to_i)
        puts "Playing #{songs[(response.to_i - 1).to_i]}"
      else
        puts "Invalid input, please try again"
      end
  
   end


   def exit_jukebox
    puts "Goodbye"
  end
  
   
  def run(my_songs)
  puts "Please enter a command: "
     while (input = gets)
     input = input.chomp.downcase
  # break if input == 'exit'
  # exit_jukebox
  case input       
      when "help"
       help
       
      when "list"
        list(my_songs)
       
      when "play"
        play(my_songs)
    
      when "exit"
        exit_jukebox
        
      else
    puts "That is not a valid command. Type 'help' available commands."
  end
end
end 



