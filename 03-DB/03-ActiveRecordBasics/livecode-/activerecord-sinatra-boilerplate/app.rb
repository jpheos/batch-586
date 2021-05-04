require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry-byebug'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/new' do
  erb :new
end

get "/restaurants/:id" do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  erb :show
end

post "/restaurants" do
  name = params[:name]
  address = params[:address]
  restaurant = Restaurant.new(name: name, address: address)
  restaurant.save
  redirect "/restaurants/#{restaurant.id}"
end

