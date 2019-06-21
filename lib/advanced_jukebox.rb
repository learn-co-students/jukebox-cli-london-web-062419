#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
    puts "I accept the following commands:
 - help : displays this help message
 - list : displays a list of songs you can play
 - play : lets you choose a song to play
 - exit : exits this program"

end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and 
  #list the songs by name
 my_songs.each do |song|
  puts "#{song}"

end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  song_request = gets.chomp

   my_songs.each do |key, value|

       if song_request == key
      # test every step.
      system 'open <Users/david/Development/jukebox-cli-london-web-062419/audio/Emerald-Park/>' # will this open the entire folder or not. Need to test.
      song_request == [key][value]
      else
      puts "Invalid input, please try again."
      end
    end
end


def exit_jukebox
  #this method is the same as in jukebox.rb
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
        break  
      else
    puts "That is not a valid command. Type 'help' available commands."
  end
end
end 

