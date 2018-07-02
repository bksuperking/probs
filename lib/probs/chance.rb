module Probs
  class Chance
    def initialize(probability, &block)
      @probability = probability
      yield if block_given? and happen?
    end

    def happen?
      @probability.percent > Kernel.rand(100)
    end
  end
end
