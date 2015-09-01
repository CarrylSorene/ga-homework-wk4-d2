require_relative 'spec_helper'
# require_relative '../lib/docking_station' #now in spec_helper instead and it runs first
# require_relative '../lib/bike'

describe Bike do

  let(:bike) { Bike.new } #to DRY up when you're initializing instances of a class each time

  it 'should not be broken after we create it' do
    expect(bike.broken?).to be false
    # expect(bike.broken?).not_to be_broken #Rspec will understand, but syntax is clunky
  end
  
  it 'should be able to break' do
    bike.break #looks in break method for value of @broken, not at other @broken values
    expect(bike.broken?).to be true
  end

  it 'should be able to be fixed' do
    bike.break #@broken = true --> breaking it before you fix it
    bike.fix #@broken = false
    expect(bike.broken?).to be false
  end



end