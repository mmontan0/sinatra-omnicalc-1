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
  @min_rand=params.fetch("users_min").to_i

  @max_rand=params.fetch("users_max").to_i

  @result_rand=rand(@min_rand..@max_rand)
  
  erb(:random_results)
end

get ("/payment/new") do
  erb(:payment_new_calc)
  end

get ("/payment/results")do
  @apr_=params.fetch("users_apr").to_f

  @years_=params.fetch("users_years").to_f

  @present_value=params.fetch("users_pv").to_f



  @result_payment=(@apr_*@present_value)/(1-(1+@apr_)**-@years_)
  
  erb(:payment_results)
end
