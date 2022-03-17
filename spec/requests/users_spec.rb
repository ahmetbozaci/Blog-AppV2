require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    before { get users_path }
 
    it 'return index response status correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'render "index" page' do
      expect(response.body).to render_template("index")
    end

    it 'includes text from index page' do
      expect(response.body).to include("<h1>Users#index</h1>")
    end
  end

  describe "GET /show" do
    before { get user_path(1) }
 
    it 'return show response status correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'render "show" page' do
      expect(response.body).to render_template("show")
    end

    it 'includes text from show page' do
      expect(response.body).to include("<h1>Users#show</h1>")
    end
  end
end
