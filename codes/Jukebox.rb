class Jukebox
 @song=["song1","song2","song3"]  
 @current=0
 class << self
  def play
    @song[@current] 
  end
  def next
    @current+=1
    @current=0 if @current>=@song.length
    play
  end


  def previous
    @current-=1
    @current=@song.length-1 if @current<0
    play
  end

  def random
    @current=rand(@song.length)
    play
  end

  def add (song_name)
    @song<<song_name
  end
 end
end


#jukebox=Jukebox.new
puts "add :#{Jukebox.add 'song4121'}"
puts "play:#{Jukebox.play}"
puts "next:#{Jukebox.next}"
puts "next:#{Jukebox.next}"

puts "next:#{Jukebox.next}"
puts "next:#{Jukebox.next}"

puts "next:#{Jukebox.next}"
puts "next:#{Jukebox.next}"

puts "next:#{Jukebox.next}"
puts "next:#{Jukebox.next}"

puts "next:#{Jukebox.next}"
puts "next:#{Jukebox.next}"

puts "previous:#{Jukebox.previous}"
puts "previous:#{Jukebox.previous}"
puts "previous:#{Jukebox.previous}"
puts "previous:#{Jukebox.previous}"
puts "previous:#{Jukebox.previous}"
puts "previous:#{Jukebox.previous}"



puts "random:#{Jukebox.random}"