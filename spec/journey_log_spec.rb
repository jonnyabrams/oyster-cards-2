require 'journey-log'

describe JourneyLog do
  it 'starts a new journey with an entry station' do
    expect(subject).to respond_to(:start).with(1).argument
  end

  it 'finishes a new journey with an exit station' do
    expect(subject).to respond_to(:finish).with(1).argument
  end
end