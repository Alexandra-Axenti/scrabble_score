require('rspec')
  require('scrabble_score')

  describe('Array#scrabble_score') do
    it("returns an 2-dimensional array that contains each word paired to its scrabble score") do
      expect("house, court mines coal,calm".scrabble_score()).to(eq([["house",8],["court",7],["mines",7],["coal",6],["calm",8]]))
    end
  end
