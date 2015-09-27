require "sinatra"

# you must have "sinatra-contrib" gem installed. This will automatically
# reload the sinatra application every time you make changes to files.
# so no need to stop and start the server every time you make a change.
require "sinatra/reloader"

require "cowsay"
require "faker"

# get: is the HTTP verb
# /: is the URL (which is the home page)
get "/" do
  @cowsay_greeting = Cowsay.say("Welcome to My Sinatra App")
  erb(:index, {layout: :app_layout})
end

# get: is the HTTP verb
# /hello: is the URL
get "/hello" do
  # erb is a method that we get from the Sinatr gem. The first arguement
  # is the template you want to use, so sinatra will look for hello.erb
  # inside a folder called "views" in the same folder as this file.
  # optionally: you can pass in a hash of options as a second arguement.
  # in this case we give a key which is layout and a value which app_layout
  # this will make Sinatra render teh app_layout.erb as a layout which
  # should be inside the "views" folder
  erb(:hello, {layout: :app_layout})
end

get "/faker" do
  @bs = Faker::Company.bs
  erb(:faker, {layout: :app_layout})
end


get "/hi" do
  "Hi there!"
end
