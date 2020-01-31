require 'rails_helper'

describe 'POST /parks', :type => :request do
    context '(valid request)' do
        it 'returns [success message, status code 201]' do
            post '/parks', params: {name: 'Yellow Stone', type_of_park: "National Park"}

            expect(JSON.parse(response.body)['id']).to be_an_instance_of(Integer)
            expect(response).to have_http_status 201
        end
    end

    context '(bad request)' do
        it 'returns [error message, status code 422]' do
            post '/parks', params: {name: '', age: 0}

            expect(JSON.parse(response.body)['message']).to eq 'Validation failed: Name can\'t be blank, Type of park can\'t be blank'
        end
    end
end
