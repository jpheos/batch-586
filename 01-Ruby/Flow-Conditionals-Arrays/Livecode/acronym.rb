def acronmyze (sentence)
    words = sentence.split
    #["Wrld", "Wde", "Wb"]
    acronym = ""
    # other_acronym = []
    words.each do |word|
        # word = Wrld, then word = Wde, then word = Wb
        acronym += word[0].upcase
        # other_acronym << word[0].upcase
    end
    # return other_acronym.join('')
    return acronym
end

def acronmyze(sentence)
    # sentence.split.map {|word| word[0].upcase}.join
    words = sentence.split
    all_letter = words.map do |word|
        word[0].upcase
    end
    all_letter.join
end

# separe les mots - check
# selectionner les premieres lettres des mots - Check
# les mettre en majuscule
# les afficher collé entre elle

p acronmyze("Wrld Wde Wb") === "WWW"
p acronmyze("World Wide Web") === "WWW"
p acronmyze("electicité de france") === "EDF"
p acronmyze("Partir sans gagner") == "PSG"

