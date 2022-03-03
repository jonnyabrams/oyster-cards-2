class Journey
  MIN_FARE = 1
  PENALTY_FARE = 6

  def initialize
    @entry_station = nil
    @exit_station = nil
  end

  def start_journey(entry_station)
    @entry_station = entry_station
  end

  def end_journey(exit_station)
    @exit_station = exit_station
  end

  def complete?
    @entry_station != nil && @exit_station != nil
  end

  def fare
    complete? ? MIN_FARE : PENALTY_FARE
  end

end


























# Journey class has constants for penalty fare and min fare

# initialize with no parameters, but @entry and @exit both set to nil

# start_journey takes entry_station as parameter, sets it as instance variable
# (expect start journey not to raise error)

# same for end_journey

# complete? method dependant on both @entry and @exit not equalling nil
# (give it an incomplete journey and expect it to be false - not eq false!)

# fare method calling complete? method - then min fare or penalty fare depending
# allow journey to receive complete and return false - expect fare to eq 6
# also give it a complete journey and expect fare to eq 1

# journey_record method soring entry and exit in a hash
# (expect journey record to include stations given, could do expet to output?)