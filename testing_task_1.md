### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card)
    # check_for_ace(card) would be a better method name to keep with convention of snakecase for methods to ease readability for others
    # card.value is being set to 1 instead of being compared to see if it's the same, it should be card.value == 1
    if card.value = 1
      return true
    else
      return false
    end
  end

# dif should be def as it's a function and a , is needed between card1 and card2 in the arguments
  dif highest_card(card1 card2)
  if card1.value > card2.value
    return card
    # should be card1 instead of card as card1 is what's being passed in
  else
    return card2
  end
end
# indentation needs fixing and the end below is unnecessary
end

def self.cards_total(cards)
  # cards_total_value might be a better method name as cards_total doesn't imply that the card's total values are being returned, it also doesn't need to be a class method.
  total
  # total needs to be set equal to zero to make it a variable and give it a starting value to add to in the below sum
  for card in cards
    total += card.value
    # return should be outside the for loop
    return "You have a total of" + total
    # instead of + total outside the string it should be inside the string using string interpolation like #{total}
    # A bit more description could be good instead of just saying "you have a total of 5" could be more like "Your cards have a total value of 5"
  end
end
# no end for class
```
