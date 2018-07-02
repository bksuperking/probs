RSpec.describe Probs do
  describe '#new' do
    it 'should return a new probability object' do
      expect(Probs.new(3,6).class).to eq(Probs::Probability)
    end
  end
end
