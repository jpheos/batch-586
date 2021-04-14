def stupid_coaching (sentence)
    if sentence.include? "?"
        return "Silly question, go back to work"
    else
        return "IDC, get dressed and go to work"
    end
end

def stupid_coaching_enhanced (sentence)
    final_sentence = stupid_coaching(sentence)
    if sentence.upcase == sentence
        final_sentence = "I can feel your motivation " + final_sentence
    end
    puts final_sentence
end


input = nil

exit_sentence = 'I GO BACK TO WORK NOW'

while input.upcase != exit_sentence
    input = gets.chomp
    break if input.upcase == exit_sentence
    stupid_coaching_enhanced(input)
end