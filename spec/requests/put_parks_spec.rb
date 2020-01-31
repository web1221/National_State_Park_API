require 'rails_helper'

describe 'PUT /parks/:id', :type => :request do
    context '(valid request)' do
        it 'returns [success message, status code 200]' do
            park = Park.create!(name: 'Crate Lake', type_of_park: "National Park")
            put "/parks/#{park.id}", params: {name: 'Crater Lake'}

            expect(JSON.parse(response.body)['message']).to eq 'This park has been updated successfully'
            expect(response).to have_http_status 200
        end
    end
    context '(bad requests)' do
        it 'updating non-existent park: returns [error message, status code 404]' do
            put '/parks/0', params: {name: 'Crater Lake', type_of_park: "National Park"}

            expect(JSON.parse(response.body)['message']).to eq 'Couldn\'t find Park with \'id\'=0'
            expect(response).to have_http_status 404
        end

        it 'updating with invalid parameters: returns [error message, status code 422]' do
            park = Park.create!(name: 'Crater Lake', type_of_park: "National Park")
            put "/parks/#{park.id}", params: {name: '', type_of_park: ''}

            expect(JSON.parse(response.body)['message']).to eq 'Validation failed: Name can\'t be blank, Type of park can\'t be blank'
            expect(response).to have_http_status 422
        end
    end
end
