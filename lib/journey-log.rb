class JourneyLog
  def initialize(journey_class = Journey.new)
    @journey_class = journey_class
    @journeys = []
  end

  def start(entry_station)
    
  end
  
  def finish(exit_station)

  end
end

# ****

# initalize with a new Journey object and an empty @journeys array

# def start_journey(station) - fail 'Already in a Journey' if 