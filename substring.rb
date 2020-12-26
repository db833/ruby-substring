def substrings(string, dictionary)
    result = {}
    #For each member in dictionary check in string
    dictionary.each do |dictWord|
        countWord = 0
        if string.downcase.include?(dictWord)
            #For each interval of length, check equals dictionary item
            (0..(string.length-dictWord.length)).each do |i|
                if dictWord == string[i,dictWord.length].downcase 
                    then countWord=countWord+1 
                end   
            end
            result[dictWord] = countWord
        end    
    end
    result
end