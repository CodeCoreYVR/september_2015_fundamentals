require "sinatra"
require "sinatra/reloader"

get "/" do
  # erb :index, layout: :app_layout
  erb(:index, {layout: :app_layout})
end

get "/convert" do
  erb(:convert, {layout: :app_layout})
end

post "/convert" do
  # {"temp_in_c"=>"100"}
  @temp_in_celsius    = params["temp_in_c"]
  @temp_in_fahrenheit = @temp_in_celsius.to_f  *  9/5 + 32
  # "Request Received. Temp in C is:  #{temp_in_celsius} | Temp in F: #{temp_in_fahrenheit}"
  erb(:convert, {layout: :app_layout})
end
