# A method to check if the input string is a palindrome.
# Return true if the string is a palindrome. Return false otherwise.
def palindrome_check(my_phrase)
  return false if my_phrase.nil?
  first = 0
  last = my_phrase.length-1

  while first < last
    while my_phrase[first] == " " && first < last
      first += 1
    end
    while my_phrase[last] == " " && first < last
      last -= 1
    end
    return false if my_phrase[first] != my_phrase[last]
    first += 1
    last -= 1
  end
  return true
end
