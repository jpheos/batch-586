require_relative '../citizen'

describe Citizen do
  describe "#can_vote?" do
    it "return true if the citizen is 18 or older" do
      citizen = Citizen.new("", "", 18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "return false if the citizen is 17 or lower" do
      citizen = Citizen.new("", "", 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe "#full_name" do
    it "returns 'John Doe' when passed 'John' and 'Doe'" do
      citizen = Citizen.new("John", "Doe", 17)
      expect(citizen.full_name).to eq("John Doe")
    end

    it "returns 'John Doe' when passed 'joHn' and 'doe'" do
      citizen = Citizen.new("joHn", "doe", 17)
      expect(citizen.full_name).to eq("John Doe")
    end
  end
end