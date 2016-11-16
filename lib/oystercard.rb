class Card

STARTING_BALANCE = 0
MAXIMUM_BALANCE = 90
MINIMUM_FARE = 1

attr_reader :balance,:maximum_balance,:in_journey,:journey


  def initialize(balance = STARTING_BALANCE, maximum_balance = MAXIMUM_BALANCE, in_journey = false)
    @balance = balance
    @maximum_balance = maximum_balance
    @in_journey = in_journey
    @journeys = []
    @journey = {}
  end

  def top_up(value)
    raise "You cannot top-up over your limit of #{@maximum_balance}" if @balance + value > @maximum_balance
    @balance += value
  end


  def in_journey?
    (@journey.size)% 2 != 0
  end

  def touch_in(station)
    raise "Insufficient funds" if @balance < MINIMUM_FARE
    @journey[:entry] = station.name
  end

  def touch_out(fare, station)
    deduct(fare)
    @journey[:exit] = station.name
    @journeys << @journey
  end

private

  def deduct(fare)
    @balance -= fare
  end

end
