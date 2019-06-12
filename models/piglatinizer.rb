
require 'pry'

class PigLatinizer

  def piglatinize(text)
    @text = text
    array = []

    word_phrase = @text.split(' ')
    word_phrase.each do |words|
      if words.start_with?(/[bcdfghjklmnpqrstvwxyz]/i) == true
        new_word = words.split(/([aeiou].*)/)
        new_text = new_word[1]
        new_text << new_word[0]
        new_text << "ay"
        array << new_text
        @text = array.join(' ')
      else
        words << "way"
        array << words
        @text = array.join(' ')
      end

    end
    @text

  end


end
