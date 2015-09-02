require_relative 'spec_helper'

describe Van do #check that it only takes broken bikes? 

  def fill_van van #need to check for reaching capacity and not accepting a bike if full
    5.times { van(Bike.new) }
  end

  let(:van) { Van.new capacity: 5 } 
  let(:bike) { Bike.new }

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

end