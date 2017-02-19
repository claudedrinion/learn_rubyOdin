# Implement a method #substrings that takes a word as the first argument and
# then an array of valid substrings (your dictionary) as the second argument.
# It should return a hash listing each substring (case insensitive) that was
# found in the original string and how many times it was found.

def substrings(str, dico)
  result = Hash.new
  dico.each do |substr|
    count = 0
    str.length.times do |i|
      if str[i, substr.length].downcase == substr
        count += 1
        result[substr] = count
      end
    end
  end
  return result

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i",
              "low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
