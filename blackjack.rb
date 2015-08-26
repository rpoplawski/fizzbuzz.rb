

#
#  Blackjack
#
#  - 2 players
#  - each player draws a card
#    - player with higher card value wins
#  - play until deck is empty
#  - print winner by who got the highest score without going over 21
#
#  A card class. (A value object is a class with no behavior)
#   - value
#  A deck class.
#   - draw()
#   - shuffle()
#  A player class?
#   - score
#  A Game class
#   - calculate_winner()
#   - start()
#   - end()

  class Player_1
    end

  class Player_2
    end

  class Card
    def initialize(value)
      @value = value    # => 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14
    end

    def value
      @value
    end
  end

  class Deck
    def initialize
      @cards =[]
      2.upto(14) do |n|
        new_card = Card.new(n)
        @cards.push(new_card)
      end
    end
  end

  def draw
    @cards.pop
  end
  def shuffle
    @cards.shuffle!
  end
  def length
    @cards.length
  end

puts "Welcome to Blackjack!"
print "Would you like to play? (y/n): "
response = gets.chomp
player_1 = Player_1.new
player_2 = Player_2.new
deck = Deck.new
deck.shuffle
if response.downcase == 'y'
  puts "you are now playing Blackjack"

  player_1_score = 0
  player_2_score = 0
  while deck.length > 0 do
    gets
    player_1_card = deck.draw
    player_2_card = deck.draw

    puts "Player #{player_1_card.display} vs Player #{player_2_card.display}"
    if player_1_card.value > player_2_card.value
      puts 'player_1 wins!'
      player_1_score += 1
    elsif player_1_card.value < player_2_card.value
      puts 'player_2 wins!'
      player_2_score += 1
    else
      puts 'tie!'
    end
  end
  puts "-------------------------------------------"
  puts "-           FINAL     SCORE               -"
  puts "-------------------------------------------"
  puts "- #{player_1_score} vs #{player_2__score} -"
  puts "-------------------------------------------"
  if player_score >= computer_score
    puts "You (player_1) win! With a score of #{player_1_score}"
  else
    puts "You (player_1) lose! You only had a horrible score of #{player_1_score}"
  end
else
  puts "Good call."
end



