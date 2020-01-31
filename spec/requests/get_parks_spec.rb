require 'rails_helper'

describe 'GET /parks', :type => :request do
    it 'returns [all parks, status code 200]' do
        get '/parks'

        expect(JSON.parse(response.body).size).to eq 5
        expect(response).to have_http_status 200
    end
end
