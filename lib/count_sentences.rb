require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  # use self to refer to the current instance
  # assume that a . ! ? is the end of a sentence
  # therefore use a RegEx to find each of those
  # split the string using the RegEx search criteria as a demarkation for the split
  # We have the individual strings.  If there are extra punctuation (!!!), that will give us empty strings
  # We need to filter the strings and return only the strings that are not empty (!sentence.empty?)
  # finally, return the number of sentences using .length 

  def count_sentences
    self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.length
  end
end