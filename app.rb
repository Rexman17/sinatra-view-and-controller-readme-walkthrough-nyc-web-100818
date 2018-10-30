require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do # renders the reverse.erb page
    erb :reverse
  end

  post '/reverse' do # receives the params hash from the form and renders the reversed.erb page
    # puts params
    original_string = params["string"] # the value of the string we pass in to form
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do # renders friends.erb page
    # Write your code here!
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    
    erb :friends # friends.erb file
  end
end
