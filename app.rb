require "sinatra"
require "sinatra/reloader"



get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get ("/square/new") do
  erb(:new_square_calc)
  end

get ("/square/results")do
  @the_num=params.fetch("users_number").to_f

  @the_result=@the_num**2
  
  erb(:square_results)
end

get ("/square_root/new") do
  erb(:new_square_root_calc)
  end

get ("/square_root/results")do
  @the_num_root=params.fetch("users_number_root").to_f

  @the_result_root=@the_num_root**0.5
  
  erb(:square_root_results)
end

get ("/random/new") do
  erb(:random_new_calc)
  end

get ("/random/results")do
  @min_rand=params.fetch("users_number_root").to_f

  @max_rand=@the_num_root**0.5
  
  erb(:random_results)
end
