class Rational
  def to_probability
    Probs.new(numerator, denominator)
  end
end
