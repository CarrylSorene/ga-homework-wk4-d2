require_relative 'spec_helper'

describe Van do

  def fill_van van
    5.times {van(Bike.new)}
  end

  let(:van) {Van.new capacity: 5}
  let(:bike) { Bike.new}

  # it 'should accept broken bikes' do
  #   van(bike.break)
  #   expect(van.bike.break).to be true
  # end

  # it 'should transport broken bikes to garage' do
  #   van.transport(bike)
  #   expect(van.bike_count).to eq 1
  # end

  it 'should release fixed bikes to docking station' do
    van.release(bike)
    expect(van.bike_count).to eq 0
  end










end