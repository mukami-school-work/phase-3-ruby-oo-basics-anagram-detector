class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        matches_in_the_array = []
        array.each do |array_word|
            if @word.length == array_word.length
                if sort_letters(@word) == sort_letters(array_word)
                    matches_in_the_array << array_word
                end
            end
        end
        matches_in_the_array
    end

    def sort_letters(word)
        word.chars.sort.join
    end
end


