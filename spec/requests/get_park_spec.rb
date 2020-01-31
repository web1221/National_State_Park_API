require 'rails_helper'

describe 'DELETE /parks/:id', :type => :request do
    context '(valid request)' do
        it 'returns [success message, status code 200]' do
            park = Park.create!(name: 'Assateague Island', type_of_park: "State Park")
            delete "/parks/#{park.id}"

            expect(JSON.parse(response.body)['message']).to eq 'Destroyed park'
            expect(response).to have_http_status 200
        end
    end

    context '(bad request)' do
        it 'returns [error message, status code 404]' do
            delete '/parks/0'

            expect(JSON.parse(response.body)['message']).to eq 'Couldn\'t find Park with \'id\'=0'
            expect(response).to have_http_status 404
        end
    end
end
