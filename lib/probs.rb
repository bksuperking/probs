require 'forwardable'

require 'probs/core_extensions/integer'
require 'probs/core_extensions/rational'
require 'probs/probability'
require 'probs/chance'

module Probs
  def self.new(*args)
    Probability.new(*args)
  end
end
