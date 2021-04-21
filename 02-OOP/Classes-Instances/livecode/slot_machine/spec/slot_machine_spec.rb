require_relative '../slot_machine'

# reels -> array of 3 strings (symbols)
def test_score(reels, expected_score)
  it "returns #{expected_score} when given #{reels.join(", ")}" do
    slot_machine = SlotMachine.new(reels)
    expect(slot_machine.score).to eq(expected_score)
  end
end

describe SlotMachine do
  describe "#score" do
    test_score(%w[joker joker joker], 50)
    test_score(%w[star star star], 40)
    test_score(%w[bell bell bell], 30)
    test_score(%w[seven seven seven], 20)
    test_score(%w[cherry cherry cherry], 10)

    test_score(%w[joker joker star], 25)
    test_score(%w[joker joker bell], 25)
    test_score(%w[joker joker seven], 25)
    test_score(%w[joker joker cherry], 25)
    test_score(%w[star star joker], 20)
    test_score(%w[bell bell joker], 15)
    test_score(%w[seven seven joker], 10)
    test_score(%w[cherry cherry joker], 5)

    test_score(%w[star star bell], 0)
    test_score(%w[star star seven], 0)
    test_score(%w[star star cherry], 0)
    test_score(%w[bell bell star], 0)
    test_score(%w[bell bell seven], 0)
    test_score(%w[bell bell cherry], 0)
    test_score(%w[seven seven star], 0)
    test_score(%w[seven seven bell], 0)
    test_score(%w[seven seven cherry], 0)
    test_score(%w[cherry cherry star], 0)
    test_score(%w[cherry cherry bell], 0)
    test_score(%w[cherry cherry seven], 0)
  end
end









