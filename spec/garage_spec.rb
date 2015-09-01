require_relative 'spec_helper'

 describe Garage do

  let(:bike) { Bike.new }
  let(:garage) { Garage.new capacity: 10 }

  def fill_van van
    10.times { garage(Bike.new) }
  end

  it 'should accept broken bikes' do
    garage.accept(bike)
    expect(garage.bike_count).to eq 1
  end
  
  it 'should fix broken bikes' do
    bike.break
    bike.fix
    expect(bike.broken?).to be false
  end
end