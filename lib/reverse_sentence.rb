# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the number of characters in the input string
# Space complexity: O(1)

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  reversed = reverse_words(my_sentence)
  return word_reverse(reversed)
end

def reverse_words(my_words)
  return nil if my_words.nil?

  start_index = 0
  end_index = 0
  my_words.length.times do |i|
    end_index = i
    if my_words[end_index] == ' '
      word_reverse(my_words, start_index, end_index - 1)
      start_index = end_index + 1
    elsif end_index == my_words.length - 1
      word_reverse(my_words, start_index, end_index)
    end
  end
  return my_words
end

def word_reverse(words, start_index = 0, end_index = words.length - 1)
  i = start_index
  j = end_index
  while i < j
    temp = words[i]
    words[i] = words[j]
    words[j] = temp
    i += 1
    j -= 1
  end
  return words
end