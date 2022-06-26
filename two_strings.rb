=begin
  Function Description

  Complete the function twoStrings in the editor below.

  twoStrings has the following parameter(s):

  string s1: a string
  string s2: another string

  determine if they share a common substring. A substring may be as small as one character.

=end

def twoStrings(s1, s2)
  # Write your code here
  s1_dict = get_word_count(s1)
  s2_dict = get_word_count(s2)
  s1_dict.each do |k,v|
      return 'YES' if s2_dict[k] != 0
  end
  'NO'
end

def get_word_count(string)
  char_dict = Hash.new(0)
  string.split('').each do |word|
      char_dict[word] =   char_dict[word] + 1      
  end
  char_dict
end
