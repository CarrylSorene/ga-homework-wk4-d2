require_relative 'spec_helper'

describe Van do

  def fill_van van
    5.times { van(Bike.new) }
  end

  let(:van) { Van.new capacity: 5 }
  let(:bike) { Bike.new }

  # it 'should accept broken bikes' do
  #   broken_bike = Bike.new
  #   van(broken_bike)
  #   expect(van.broken_bikes).to eq [broken_bike]
  # end

  it 'should transport broken bikes to garage' do
    van.transport(bike)
    expect(van.bike_count).to eq 1
  end

  it 'should release broken bikes to garage' do
    van.release(bike)
    expect(van.bike_count).to eq 0
  end

  it 'should transport fixed bikes to docking station' do
      van.transport(bike)
      expect(van.bike_count).to eq 1
  end

  it 'should release fixed bikes to docking station' do
    van.release(bike)
    expect(van.bike_count).to eq 0
  end

  # it 'should know when it has reached capacity' do
  #   fill_van van
  #   expect(van.full?).to be true
  # end

end