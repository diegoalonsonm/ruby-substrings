dict = ["below","down","go","going","horn","how","howdy","it","i", "low","own","part","partner","sit"]

def substrings(str, dict)
  str.downcase!
  str_to_arr = str.split
  matches = []
  frequency = {}

  dict.each do |word|
    if str_to_arr.any? { |element| element.include?(word) }
      matches.push(word)
    end
  end

  matches.each do |word|
    frequency[word] = str_to_arr.count { |element| element.include?(word) }
  end
  frequency
end

p substrings("Howdy partner, sit down! How's it going?", dict)