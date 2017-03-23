require('./lib/word_score')

class String
  define_method(:scrabble_score) do
    words = self.downcase().split(', ').join(' ').split(' ').join(',').split(',')
    scores = []
    words.each() do |word|
      scores.push(word.word_score())
    end
    words.zip(scores)
  end
end
