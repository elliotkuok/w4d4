def first_anagrams?(word1,word2) #(linear ? )
    word1_arr = word1.split('')
    anagrams =  word1_arr.permutation(word1.length) 
    words = []
    anagrams.each do |subarr|
        words << subarr.join('')
    end
    words.include?(word2) ? true : false
end

def secord_anagrams?(word1,word2) #linear
    return false if word1.length != word2.length
    word1_arr = word1.split('')
    word2_arr = word2.split('')

    word1_arr.each do |char|
        idx = word2_arr.find_index(char)
        return false if idx.nil?
        word2_arr.slice!(idx)
    end
    word2_arr.empty? 
end

def third_anagrams?(word1,word2) # aka loglinear
    word1_arr = word1.split('')
    word2_arr = word2.split('')
    word1_arr.sort == word2_arr.sort
end

def fourth_anagrams?(word1,word2)  # linear?
    return false if word1.length != word2.length
    counter = Hash.new(0)
    word1.each_char {|char| counter[char] +=1 }
    word2.each_char {|char| counter[char] -=1 }
    # p counter
    counter.values.all?{|v| v.zero?}
end
