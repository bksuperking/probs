class Integer
  # Syntactic sugar for creating probability objects.
  #
  #   3.in(6) => 50.0%
  def in(number)
    Probs.new(self, number)
  end

  # Syntactic sugar for creating probability objects.
  #
  def percent
    Probs.new(self.to_f / 100)
  end
end
