 require_relative 'journey'
 
 class Oystercard
  DEFAULT_BALANCE = 0
  MAX_BALANCE = 90
  MIN_FARE = 1

  attr_reader :balance #, :entry_station

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    # @entry_station = nil
    @current_journey = Journey.new
  end

  def top_up(money)
    fail 'Maximum limit reached' if over_limit?(money)
  
    @balance += money
  end

  # def in_journey?
  #   !@entry_station.nil?
  # end

  def touch_in(entry_station)
    fail 'Insufficient Funds' if under_min_balance?
    
    @current_journey.start_journey(entry_station)
  end

  def touch_out(exit_station)
    # MOVE THAT BELOW
    # @journeys << { entry: @entry_station, exit: exit_station }
    # @entry_station = nil
    @current_journey.end_journey(exit_station)
    deduct
  end

  private

  def over_limit?(money)
    @balance + money > MAX_BALANCE
  end

  def under_min_balance?
    @balance < MIN_FARE
  end

  def deduct
    @balance -= @current_journey.fare
  end
end