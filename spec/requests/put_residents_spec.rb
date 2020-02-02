
require 'rails_helper'

describe "edit residents route", :type => :request do
  let!(:residents) { FactoryBot.create_list(:resident, 1)}

  it 'updates a residents name' do
     patch "/residents/'#{:id}'" , :name =>'Updated Shmo'
      expect(JSON.parse(response.body)['name']).to eq('Updated Shmo')
    end
  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
