class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = name1
    @player2 = name2
    @cups = Array.new(14)
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    5.times {|i| @cups[i] = [:stone, :stone, :stone, :stone] }
  end

  def valid_move?(start_pos)

    raise "Invalid starting cup" if start_pos > 14
    raise "Invalid starting cup" if start_pos < 1

  end

  def make_move(start_pos, current_player_name)
    if current_player_name == @player1
      opponent = 13
    else
      opponent = 6
    end
    
    stones = @cups[start_pos].length
    @cups[start_pos] = []

    stones.times do |i|
      index = (start_pos + i + 1) % 15
      @cups[index] << :stone unless index == opponent
    end


    render

  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
