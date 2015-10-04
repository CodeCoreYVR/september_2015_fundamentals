require "sinatra"
require "sinatra/reloader"
require 'data_mapper'

enable :sessions

# Dir.pwd -> gives us the current directory of this file (app.rb)
DataMapper.setup(:default, "sqlite://#{Dir.pwd}/contacts.db")

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end

# DataMapper will create a table named "contacts" which is the pluralized
# name of the class name we gave in here.
class Contact
  # this enables us to utilize DataMapper in order to map this class to
  # a table in the database (Which currently lives in contacts.db)
  include DataMapper::Resource

  # Serial -> INTEGER PRIMARY KEY AUTOINCREMENT
  property(:id, Serial)

  # String -> VARCHAR(50)
  property(:name, String)
  property(:email, String)

  # Text -> Text (unlimited character count)
  property(:message, Text)

  property(:notes, Text)

  property :created_at, DateTime
end

# this will take the class above and it will create the necessary tables for us
DataMapper.auto_upgrade!


get "/" do
  # erb :index, layout: :app_layout
  # session[:counter] = 0 unless session[:counter].nil?
  # session[:counter] ||= 0
  session[:counter] = 0 unless session[:counter]
  session[:counter] += 1
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

get "/pick_random" do
  erb(:pick_random, {layout: :app_layout})
end

post "/pick_random" do
  @random_names = params["names_input"]
  @random_names_array = @random_names.split(",")
  if @random_names_array.empty?
    @winner = "There is no competition"
  else
    @winner = @random_names_array.sample
  end
  erb(:pick_random, {layout: :app_layout})
end

get "/contact" do
  erb :contact, layout: :app_layout
end

post "/contact" do
  Contact.create({
    name: params["name"],
    email: params["email"],
    message: params["message"],
    created_at: Time.now
    })
  erb :thank_you, layout: :app_layout
end

get "/all_contacts" do
  protected!
  @contacts = Contact.all
  erb :all_contacts, layout: :app_layout
end

# this action will match any url with /contact/[something]
# in practice we're expecting the [something] to be an id
# of a contact.
get "/contact/:id" do |id|
  protected!
  @contact = Contact.get(id)
  session[:last_visited_user] = @contact.name
  erb :contact_details, layout: :app_layout
end

post "/contact/:id" do |id|
  protected!
  @contact = Contact.get(id)
  # @contact.update(notes: "#{@contact.notes}<br>#{params["notes"]}-#{Time.now}")
  @contact.update(notes: params["notes"])
  erb :contact_details, layout: :app_layout
end
