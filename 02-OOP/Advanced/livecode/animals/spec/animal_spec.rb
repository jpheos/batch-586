require_relative '../lib/animal'
require_relative '../lib/meerkat'
require_relative '../lib/lion'
require_relative '../lib/warthog'

describe Animal do
  describe '#initialize' do
    it 'creates an instance of Animal' do
      expect(Animal.new("Simba")).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'exposes the name' do
      animal = Animal.new("Simba")

      expect(animal.name).to eq("Simba")
    end
  end

  describe '.phyla' do
    it 'returns the expected array' do
      expected_array = %w[mammals birds fish reptiles amphibians]

      # Call the class method .phyla on the class Animal
      expect(Animal.phyla).to eq(expected_array)
    end
  end

  describe '#eat(food)' do
    it 'returns the expected string' do
      animal = Animal.new("Timon")

      expect(animal.eat("fruit")).to eq("Timon eats a fruit")
    end
  end
end

describe Lion do
  describe '#talk' do
    it 'returns the expected sentence' do
      expect(Lion.new("Simba").talk).to eq("Simba roars")
    end
  end

  describe '#eat(food)' do
    it 'returns the expected sentence' do
      simba = Lion.new("Simba")

      expect(simba.eat("gazelle")).to eq("Simba eats a gazelle. Law of the Jungle!")
    end
  end
end

describe Meerkat do
  describe '#talk' do
    it 'returns the expected sentence' do
      expect(Meerkat.new("Timon").talk).to eq("Timon barks")
    end
  end
end

describe Warthog do
  describe '#talk' do
    it 'returns the expected sentence' do
      expect(Warthog.new("Pumba").talk).to eq("Pumba grunts")
    end
  end
end