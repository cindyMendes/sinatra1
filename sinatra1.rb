# ruby sinatra1.rb -o $IP -p $PORT

require 'sinatra' 

enable :sessions

get "/set" do
  session[:message] = params[:message]
  "session saved"
end 
get "/get" do
  session[:message]
end



# SINATRA EXERCISE 1

get '/getdoc' do
  "<!DOCTYPE html>
  <html>
    <h1> Hello </h1>
  </html>"
end





# SINATRA EXERCISE 1.1

get '/post_it.html' do
  "<!DOCTYPE html>
    <html>
        <head> </head>
        
        <body>
            <form action='/submitted' method='POST'>
                Message:
                <input type='text' name='message'>
                <input type='submit' value='Send'>
            </form>
        </body>
        
    </html>"
end

# post "/submitted" do
#   "<h1>Form Submitted</h1>"
# end

# post "/submitted" do
#   "<h1>#{params[:message]}</h1>"
# end

post "/submitted" do
  if params[:message] == "welcome"
    "Thank you"
  else
    "I don't understand"
  end
end





# SINATRA EXERCISE 2

get '/logon.html' do
  "<!DOCTYPE html>
    <html>
        <head> </head>
        
        <body>
            <form action='/submittedd' method='POST'>
                Username:
                <input type='text' name='username'>
                <br/><br/>
                Password:
                <input type='text' name='password'>
                <br/><br/>
                <input type='submit' value='Send'>
            </form>
        </body>
        
    </html>"
end

post "/submittedd" do
  if params[:username] == "bob" && params[:password] == "pass"
    "SUCCESS"
  else
    "FAILURE"
  end
end





# SINATRA EXERCISE 3

get '/name.html' do
  "<!DOCTYPE html>
    <html>
        <head> </head>
        
        <body>
            <form action='/hello' method='POST'>
                Name:
                <input type='text' name='name'>
                <br/><br/>
                <input type='submit' value='Send'>
            </form>
        </body>
        
    </html>"
end


post "/hello" do
  session[:name] = params[:name]
  "Session saved"
end 

get "/greet" do
  "Hello #{session[:name]}!"
end 





