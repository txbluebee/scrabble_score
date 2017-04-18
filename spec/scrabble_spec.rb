require('rspec')
require('scrabble')

describe('String#scrabble') do
  it("returns a scrabble score for a letter") do
    expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a Capital letter") do
    expect("A".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for two letter word") do
    expect("Hi".scrabble()).to(eq(5))
  end
  it("returns a scrabble score for 5 letter word") do
    expect("Brian".scrabble()).to(eq(7))
  end
  it("returns a scrabble score for a sentence") do
    expect("How are you".scrabble()).to(eq(18))
  end
end
