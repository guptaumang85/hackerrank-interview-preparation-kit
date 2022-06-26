=begin
  Function Description

  Complete the checkMagazine function in the editor below. It must print  if the note can be formed using the magazine, or .

  checkMagazine has the following parameters:

  string magazine[m]: the words in the magazine
  string note[n]: the words in the ransom note

=end

def checkMagazine(magazine, note)
    # Write your code here
    print(get_output(magazine, note))
end

def get_output(magazine, note)
    return "No" if note.length > magazine.length
    note_dict = get_word_count(note)
    magazine_dict = get_word_count(magazine)
    
    note_dict.each do |word, count|
        return "No" if magazine_dict[word] < count
    end
    "Yes"
end

def get_word_count(word_array)
    word_dict = Hash.new(0)
    word_array.each do |word|
        word_dict[word] =   word_dict[word] + 1      
    end
    word_dict
end
