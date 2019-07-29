class Book
    def title= book_name
        @title = book_name
        title
    end
# write your code here
    def title
        little_words = ["a", "an", "the", "or", "and", "in", "of"]
        words = [@title]
        words = @title.split(" ")
        $i = 0

        while $i < words.length
            words[$i] = words[$i].capitalize() unless little_words.include? words[$i]
            $i += 1
        end
        words[0] = words[0].capitalize
        @title = words.join(" ")
        return @title
    end

end
