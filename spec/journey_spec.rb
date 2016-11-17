require 'journey'

describe Journey do

    it {is_expected.to respond_to :start_a_journey}
    it {is_expected.to respond_to :finish_a_journey}
    it {is_expected.to respond_to :calculating_fare}

    it 'should remember the entry station' do
      station = 'waterloo'
      expect(subject.start_a_journey(station)).to eq 'waterloo'
    end

    it 'should remember the exit station' do
      station = 'aldgate'
      expect(subject.finish_a_journey(station)).to eq 'aldgate'
    end


end
