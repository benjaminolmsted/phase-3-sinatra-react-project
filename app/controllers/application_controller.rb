class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/works" do
    Work.all.to_json
  end

  delete "/works/:id" do
    work = Work.find(params[:id])
    work.destroy
    work.to_json
  end

  post "/works" do
    Work.create(params).to_json
  end

  post "/users" do
    user = User.find_or_create_by(params)
    user.to_json
  end

end
