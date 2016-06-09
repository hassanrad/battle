require 'player'

describe Player do

  subject(:player1) { described_class.new("Aquarious") }
  subject(:player2) { described_class.new("Pisces")}

  describe '#initialization' do
	  it 'returns player name' do
	    expect(player1.name).to eq("Aquarious")
	  end
	  it 'returns player starting hit points' do
	  	expect(player1.hit_points).to eq Player::STARTING_HIT_POINTS
	  end
	end

	describe '#attack' do
		it 'reduces player2 hit points by 10' do
			expect{player1.attack(player2)}.to change{player2.hit_points}.by(-Player::ATTACK_DAMAGE)
		end
	end

end