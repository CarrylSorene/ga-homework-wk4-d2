require_relative 'spec_helper'

 describe Garage do

  def fill_garage garage
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

  # it 'should only let the van transport bikes' do

  # end

  # it 'should know when it has reached capacity' do
  #   fill_garage garage
  #   expect(garage.full?).to be true
  # end

  # it 'should not accept a bike if it\'s full' do
  #   fill_garage garage
  #   expect{garage(bike)}.to raise_error RuntimeError
  # end

end