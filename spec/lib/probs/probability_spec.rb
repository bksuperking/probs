RSpec.describe Probs::Probability do
  a = Probs.new(3,6)

  describe '.decimal' do
    it 'returns the correct value' do
      expect(a.decimal).to eq(0.5)
    end
  end
  describe '.percentage' do
    it 'returns the correct value' do
      expect(a.percentage).to eq(50.0)
    end
  end

  describe '.to_s' do
    context 'when format equals :decimal' do
      it 'returns the correct string' do
        expect(a.to_s(:decimal)).to eq('0.5')
      end
    end
    context 'when format equals :fraction' do
      it 'returns the correct string' do
        expect(a.to_s(:fraction)).to eq('1/2')
      end
    end
    context 'when format equals :percentage' do
      it 'returns the correct string' do
        expect(a.to_s(:percentage)).to eq('50.0%')
      end
    end
    context 'when format equals :ratio' do
      it 'returns the correct string' do
        expect(a.to_s(:ratio)).to eq('1:1')
      end
    end
  end

  describe '.chance' do
    it 'returns a Chance object' do
      expect(a.chance.class).to eq(Probs::Chance)
    end
  end
end
