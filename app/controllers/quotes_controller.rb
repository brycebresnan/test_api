class QuotesController < ApplicationController
 


  def index
    name = params[:name]
    @quotes = Quote.search(name)
    json_response(@quotes)
  end

  def show
    @quote = Quote.find(params[:id])
    json_response(@quote)
  end

  def create
    @quote = Quote.create!(quote_params)
    json_response(@quote, :created)
  end

  def update
    @quote = Quote.find(params[:id])
    if @quote.update!(quote_params)
      render status: 200, json: {
        message: "Nice ! This quote has been updated successfully."
        }
    end
  end

  def destroy
    @quote = Quote.find(params[:id])
    if @quote.destroy!
      render status: 200, json: {
        message: "you F'n destroyed that thang brah"
      }
    end
  end

  private
  def quote_params
    params.permit(:author, :content)
  end

  
end