require 'json'
# Profanity Filter by Max Delaney.
# Takes word and compares it against the list of words considered profanity declared in the unwanted_words.json

class Checkprofanity

    $file = File.read('lib/unwanted_words.json')
    #$file = File.read('unwanted_words.json')
    $words = JSON.parse($file)

    #censor found word
    def self.censorWord(word)
        censoredWord = ""
        #word = "ABC"
        
        for i in 0..word.length - 1
            censoredWord.concat('*')
        end
        return censoredWord
    end

    #main
    def self.runcheck(isProfanity)
        #puts $words
        #for loop to check the inputted word against the list of profane words.
        for value in $words do
            if isProfanity.include? value   #used include now match??
                #puts(value)
                #size = value.size
                #puts(size)
                #Checkprofanity.censorWord(value)
                censoredWord = Checkprofanity.censorWord(value)
                puts(isProfanity = isProfanity.gsub(value, censoredWord))
            end
        end
    end
end