key_signatures = ["C", "D", "E", "F", "G", "A", 
"B", "C#", "Db", "D#", "Eb",
"F#", "Gb", "G#", "Ab", "A#",
"Bb"]

major_or_minor = ["major", "minor"]

chords = ["I", "ii", "iii", "IV", "V", "vi", "vii"]

random_key_num = rand(0..key_signatures.length.to_i)
random_key = key_signatures[random_key_num.to_i]

random_maj_min_num = rand(0..1)
random_maj_min = major_or_minor[random_maj_min_num]

#rand_chord_num = rand(0..chords.length.to_i)
#counter = 0

=begin
while counter < 3
    rand_chord_num = rand(0...chords.length.to_i)
    puts rand_chord_num
    puts chords[rand_chord_num]
    counter += 1
end
=end

chord_one = chords[rand(0...chords.length.to_i)]
chord_two = chords[rand(0...chords.length.to_i)]
chord_three = chords[rand(0...chords.length.to_i)]

#print "Key num: #{random_key_num} | Majmin num: #{
puts "#{random_key} #{random_maj_min}"
puts "Start on #{key_signatures[rand(0...key_signatures.length.to_i)]}."
print "Include the following chord progression: #{chord_one} #{chord_two} #{chord_three}"