
require 'rails_helper'

describe "get all residents route", :type => :request do
  let!(:residents) { FactoryBot.create_list(:resident, 20)}

  before { get '/residents'}

  it 'returns all residents' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
