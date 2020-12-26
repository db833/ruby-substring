def substrings(string, dictionary)

    countSubs(allSubstrings(string), dictionary)

end

#Get all substrings
def allSubstrings(string)
    array = []
    (0..string.length).each do |i|
        (0..string.length).each do |j|
            array.push(string[i,j])
        end
    end
    return array.uniq
end

#Count substring in dictionaty
def countSubs(arraySubs, dictionary)
    hashSubCount = {}
    arraySubs.each do |substring|
        if dictionary.count(substring) > 0 then hashSubCount[substring] = dictionary.count(substring) end
    end
    return hashSubCount
end