require_relative 'spec_helper'
# require_relative '../lib/docking_station'
# require_relative '../lib/bike'

describe DockingStation do #class name so UpperCamelCase

  def fill_station station
    20.times { station.dock(Bike.new) }  
  end

  let(:station) { DockingStation.new capacity: 20 } #k: v pair doesn't need () in Ruby
  let(:bike) { Bike.new } #don't worry about pink let
  
  it 'should be empty after we build it' do
    expect(station.bike_count).to eq 0
  end

  it 'should be able to dock a bike' do
    station.dock(bike)
    expect(station.bike_count).to eq 1
  end

  it 'should be able to release a bike' do
    station.dock(bike)
    station.release(bike)
    expect(station.bike_count).to eq 0
  end

  it 'should know when it has reached capacity' do
    fill_station station
    expect(station.full?).to be true
  end

  it 'should not accept a bike if it\'s full' do
    fill_station station
    expect{station.dock(bike)}.to raise_error RuntimeError #curly braces (looks like a block) --> a proc/lambda --> only when dealing with errors
  end

  it 'should provide a list of available bikes' do
    working_bike, broken_bike = Bike.new, Bike.new
    broken_bike.break #breaks broken bike
    station.dock(working_bike)
    station.dock(broken_bike) #one on each line because dock takes one bike parameter #or could use a * splat
    puts station.available_bikes.inspect #inspect is like saying to_s so gives you a nicer output - tells you attributes e.g. broken == false, that it's an array or hash etc 
    expect(station.available_bikes).to eq [working_bike] #plural bikes need an array even though if we're only returning one
  end

end