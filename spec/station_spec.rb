require "station"

describe Station do
  it 'expects the name waterloo upon initialization to hold the name waterloo' do
    station_name = 'waterloo'
    station = Station.new(station_name, 1)
    expect(station.name).to eq station_name
end

  it 'expects the zone to be held by the instance of a new station' do
  zone_1 = 1
  station = Station.new('waterloo', zone_1)
  expect(station.zone).to eq zone_1
end
end
