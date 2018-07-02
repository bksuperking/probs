module Probs
  class Probability
    extend Forwardable
    def_delegators :@rational, :numerator, :denominator

    def initialize(*args)
      @rational = Rational(*args)
    end
    def decimal
      numerator.to_f / denominator
    end
    def percentage
      decimal.to_f * 100
    end

    def to_s(format=:percentage)
      case format
      when :decimal
        decimal.to_s
      when :fraction
        "#{numerator}/#{denominator}"
      when :percentage
        percentage.to_s + '%'
      when :ratio
        "#{numerator}:#{denominator - numerator}"
      end
    end

    def chance(&block)
      Chance.new(self, &block)
    end
  end
end
