#write your code here
def translate string
    vowels = ["a", "e", "i", "o", "u"]
    words = []  
    words = string.split(" ")

    $word = 0
    while $word < words.length
        if vowels.include? words[$word][0]
            words[$word] = words[$word] + "ay"
        else
            $letter = 0
            $temp = ""

            while !(vowels.include? words[$word][$letter])
                if words[$word][$letter] == "q" && words[$word][$letter+1] == "u"
                    $temp += words[$word][$letter] + words[$word][$letter+1]
                    $letter += 2
                    next
                end
                $temp += words[$word][$letter]
                $letter += 1
            end

            words[$word] = words[$word][$letter..words[$word].length-1]
            words[$word] = words[$word] + $temp + "ay"
        end
        $word += 1
    end
    return words.join(" ")
end

puts translate("ominous")
puts translate("hello cheetah")
puts translate("queen bean")