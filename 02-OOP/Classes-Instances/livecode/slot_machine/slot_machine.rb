# SYMBOLS = %w[cherry seven bell star joker]
# Simplified SlotMachine with 3 identical or 2+joker rules.
class SlotMachine
  SYMBOLS = {
    'cherry' => 10,
    'seven' => 20,
    'bell' => 30,
    'star' => 40,
    'joker' => 50
  }
  
  # Constructor
  def initialize(reels = [])
    @reels = reels
  end

  # When entering this method, @reels is already generated
  # For example : [joker, joker, joker]
  def score
    if @reels.uniq.size == 1
      # 3 same symbols
      # unique_symbol = @reels[0]
      # # Get symbol index (0, 1, 2, 3 or 4)
      # unique_symbol_index = SYMBOLS.index(unique_symbol)
      # # Calculate score by multiplying by 10
      # return (unique_symbol_index + 1) * 10

      return SYMBOLS[@reels[0]]
    elsif @reels.uniq.size == 2 && @reels.include?('joker')
      # 2 same symbols + 1 joker
      duplicated_symbol = @reels.sort[1]
      return SYMBOLS[duplicated_symbol] / 2
    else
      return 0
    end
  end

  def play
    @reels = []

    3.times do
      @reels << SYMBOLS.keys.sample
    end

    return @reels
  end
end
