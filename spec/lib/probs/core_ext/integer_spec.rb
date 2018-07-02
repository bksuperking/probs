RSpec.describe Integer do
  a = 3.in(6)
  b = 50.percent

  describe '.in' do
    it 'returns a probability object' do
      expect(a.class).to eq(Probs::Probability)
    end

    it 'returns a probability object of the correct percentage' do
      expect(a.to_s(:percentage)).to eq('50.0%')
    end
  end

  describe '.percent' do
    it 'returns a probability object' do
      expect(b.class).to eq(Probs::Probability)
    end

    it 'returns a probability object of the correct percentage' do
      expect(b.to_s(:percentage)).to eq('50.0%')
    end
  end
end
