require 'journey'

describe Journey do
  
  it 'responds to a start_journey method with one argument' do
    expect(subject).to respond_to(:start_journey).with(1).argument
  end

  it 'responds to an end_journey method with one argument' do
    expect(subject).to respond_to(:end_journey).with(1).argument
  end

  describe '#complete?' do
    it 'says if a journey is complete' do
      journey = Journey.new
      journey.start_journey('Wimbledon')
      journey.end_journey('Victoria')
      expect(journey.complete?).to be true
    end

    it 'says if a journey is not complete' do
      journey = Journey.new
      journey.start_journey('Wimbledon')
      expect(journey.complete?).to be false
    end
  end

  describe '#fare' do
    it 'deducts minimum fare if journey is complete' do
      journey = Journey.new
      journey.start_journey('Wimbledon')
      journey.end_journey('Victoria')
      expect(journey.fare).to eq Journey::MIN_FARE
    end

    it 'deducts penalty fare if journey is incomplete' do
      journey = Journey.new
      journey.start_journey('Wimbledon')
      expect(journey.fare).to eq Journey::PENALTY_FARE
    end
  end
end