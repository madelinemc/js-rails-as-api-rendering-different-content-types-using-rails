class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    #DEFAULT RAILS VIEW: render 'birds/index.html.erb'
    #RENDER PLAIN TEXT FROM CONTROLLER: render plain: "Hello #{@birds[3].name}"
    #RENDER JSON FROM CONTROLLER STRING: render json: 'Remember that JSON is just object notation converted to string data, so strings also work here'
    #RENDER JSON FROM CONTROLLER HASH: render json: { message: 'Hashes of data will get converted to JSON' }
    #RENDER JSON FROM CONTROLLER ARRAY: render json: ['As','well','as','arrays']
    #you can use to_json method to explicitly convert an array or hash: render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }.to_json
    #RENDER JSON FROM CONTROLLER COLLECTION: render json: @birds
    #RENDER JSON FROM CONTROLLER NESTED: render json: { birds: @birds, messages: ['Hello Birds', 'Goodbye Birds'] }
  end
end
