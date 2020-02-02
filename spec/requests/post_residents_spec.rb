require 'rails_helper'

describe "post a resident route", :type => :request do

  before do
    post '/residents', params: { :name => 'Joe Shmo', :age => 99, :room_number => 25, :fall_risk => true }
  end

  it 'returns the resident name' do
    expect(JSON.parse(response.body)['name']).to eq('Joe Shmo')
  end

  it 'returns the resident age' do
    expect(JSON.parse(response.body)['age']).to eq(99)
  end
  it 'returns the resident room number' do
    expect(JSON.parse(response.body)['room_number']).to eq(25)
  end
  it 'returns the resident fall risk' do
    expect(JSON.parse(response.body)['fall_risk']).to eq(true)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
