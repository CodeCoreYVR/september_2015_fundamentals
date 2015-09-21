require "codecore_jukebox"

print "Give me a song name: "
name = gets.chomp

print "Give me a song notes (e.g. C*4 C#*2): "
notes = gets.chomp

print "What is the BPM (Beats Per Minute): "
bpm = gets.chomp.to_i

notes_array = []
notes.split.each do |note|
  arr = note.split("*")
  notes_array << {"pitch" => arr[0], "beats" => arr[1]}
end

CodecoreJukebox.send(name, notes_array, bpm)
