require "codecore_jukebox"

print "Give me the name of the song: "
name = gets.chomp

print "Give me the Beats Per Minute (BPM): "
bpm = gets.chomp.to_i

print "Give me the notes (e.g. C#*5 A*6 B*7): "
notes_string = gets.chomp

notes = []

# if I have C#*5 A*6 B*7
# split -> ["C#*5", "A*6", "B*7"]
notes_string.split(" ").each do |note_and_beat|
  # if I have "C#*5"
  # split -> ["C#", "5"]
  note_beat_array = note_and_beat.split("*")
  # we construct that hash form the note_beat_array
  note_beat_hash  = {"pitch" => note_beat_array[0],
                     "beats" => note_beat_array[1].to_i}
  # we push the hash into the notes array
  notes.push(note_beat_hash)
end

CodecoreJukebox.send(name, notes, bpm)

# name  = "Tam's Song 1"
# notes = [{"pitch" => "A", "beats" => 5}, {"pitch" => "B", "beats" => 5}]
# bpm   = 300
# CodecoreJukebox.send(name, notes, bpm)
