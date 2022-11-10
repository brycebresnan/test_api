require 'rails_helper'

describe "destroy a quote route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 1)}
  quote = Quote.all.first
  
  before do
    quote = Quote.all.first
    delete "/quotes/#{quote.id}"
  end
  
  it 'destroys all quotes' do 
    expect(JSON.parse(response.body)['message']).to eq("you F'n destroyed that thang brah")
  end

  # it 'returns status code 204' do
  #   get "/quotes/#{quote.id}"
  #   expect(response).to have_http_status(:not_found)
  # end
end


