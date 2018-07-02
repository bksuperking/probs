# Probs

A gem which aims to add helpful methods and classes for dealing with chance/probability.

## Usage

    75.percent == 3.in(4) == Rational(3,4).to_probability == Probs.new(3,4)
    # => true

    puts 75.percent
    # 75.0%

## Examples

Calculate the percentage of drawing a certain suit from a deck of cards.

    Probs.new(13, 52).percent
    # => 25.0
