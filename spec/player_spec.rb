require 'player'

describe Player do
  let(:player) {Player.new("John")}
  
  it "should return players name" do
    expect(player.name).to eq "John"
  end
end

