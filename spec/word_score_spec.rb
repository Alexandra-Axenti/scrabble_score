require('rspec')
  require('word_score')

  describe('String#word_score') do
    it("returns a scrabble score of '1' for the letter 'a'") do
      expect("a".scrabble_score()).to(eq([["a",1]]))
    end

    it("returns a scrabble score of '10' for  the letter 'q'") do
      expect("q".scrabble_score()).to(eq([["q",10]]))
    end

    it("returns a scrabble score of '48' for  the word 'quizzifications'") do
      expect("quizzifications".scrabble_score()).to(eq([["quizzifications",47]]))
    end

    it("returns a scrabble score of '41' for  the word 'methoxybenzenes'") do
      expect("methoxybenzenes".scrabble_score()).to(eq([["methoxybenzenes",41]]))
    end

    it("returns a scrabble score of '32' for  the word 'straightjackets'") do
      expect("straightjackets".scrabble_score()).to(eq([["straightjackets",32]]))
    end
  end
