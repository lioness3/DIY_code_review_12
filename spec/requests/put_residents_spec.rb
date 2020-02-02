
require 'rails_helper'

describe "PUT #update", :type => :request do
  let!(:residents) { FactoryBot.create_list(:resident, 1)}

   it 'should update resident info' do


     patch :update, params: {  name: 'Awesome resident'}
     resident.update
expect(JSON.parse(response.body)['name']).to eq('Awesome resident')
    end
   end
