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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
   puts "#{i+1}. #{song}"
 end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  songs.each_with_index do |song, i|
    if song_choice == (i +1).to_s || song_choice == song
      puts "Playing #{song}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
    puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
  while command != "exit"
    case command
    when "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    when "list"
      list(songs)
      puts "Please enter a command:"
      command = gets.chomp
    when "play"
      play(songs)
      puts "Please enter a command:"
      command = gets.chomp
    else
      puts "Invalid input, please try again"
      command = gets.chomp
    end
  end
  exit_jukebox
end
