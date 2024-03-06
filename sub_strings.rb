dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dictionary)
  str = "Howdy partner, sit down! How's it going?"
  str = str.downcase
  hash = {}
  dictionary.each_with_index do |substring, index|
    hash[substring] = str.scan(substring).count if str.scan(substring).count > 0
  end
  hash
end

p substrings("Howdy partner, sit down! How's it going?", dictionary)