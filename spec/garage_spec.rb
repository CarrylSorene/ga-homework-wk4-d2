require_relative 'spec_helper'

 describe Garage do

  def fill_garage garage #need to check for reaching capacity and not accepting a bike if full
    10.times { garage(Bike.new) }
  end

  let(:bike) { Bike.new }
  let(:garage) { Garage.new capacity: 10 } 

  it 'should accept broken bikes' do
    garage.accept(bike)
    expect(garage.bike_count).to eq 1
  end
  
  it 'should fix broken bikes' do
    bike.break
    bike.fix
    expect(bike.broken?).to be false
  end

  it 'should release fixed bikes to the van' do
    garage.release(bike)
    expect(garage.bike_count).to eq 0
  end

end