require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/rock")do
  allowed_moves = ["rock", "paper", "scissors"]
  @computer_move = allowed_moves[rand(0..2)]
  @player_move = "rock"
  erb(:play_rock)
end

get("/paper")do
  allowed_moves = ["rock", "paper", "scissors"]
  @computer_move = allowed_moves[rand(0..2)]
  @player_move = "paper"
  erb(:play_paper)
end

get("/scissors")do
  allowed_moves = ["rock", "paper", "scissors"]
  @computer_move = allowed_moves[rand(0..2)]
  @player_move = "scissors"
  erb(:play_scissors)
end
