require 'player'

describe Player do
  let(:john) {Player.new("John")}
  let(:barry) {Player.new("Barry")}

  it "should return players name" do
    expect(john.name).to eq "John"
  end

  it "attacks" do
    expect(barry).to receive(:take_damage)
    john.attack(barry)
  end

  it "takes 10HP from player" do
    expect { john.take_damage }.to change { john.player_score }.by(-10) 
  end
end

