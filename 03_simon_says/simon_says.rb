#write your code here
def echo (string)
    return "#{string}"
end

def shout (string)
    return "#{string.upcase}"
end

def repeat (string, times=2)
    ([string] * times).join(" ")
end

def start_of_word (word, letters)
    return word[0..letters-1]
end

def first_word string
    words = string.split()
    return words[0]
end

def titleize string

    little_words = ["the", "or", "and", "over"]
    words = []
    words = string.split(" ")
    $i = 0

    while $i < words.length
        words[$i] = words[$i].capitalize() unless little_words.include? words[$i]
        $i += 1
    end
    words[0] = words[0].capitalize
    string = words.join(" ")
    return string
end