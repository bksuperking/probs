RSpec.describe Rational do
  a = Rational(3,6)

  describe '.to_probability' do
    it 'converts itself to a probability object' do
      expect(a.to_probability.decimal).to eq(0.5)
    end
  end
end
