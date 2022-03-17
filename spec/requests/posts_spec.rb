require 'rails_helper'

RSpec.describe "Post", type: :request do
  describe "GET /index" do
    before { get user_posts_path(1) }
 
    it 'return index response status correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'render "index" page' do
      expect(response).to render_template("index")
    end

    it 'includes text from index page' do
      expect(response.body).to include("<h1>Posts#index</h1>")
    end
  end

  describe "GET /show" do
    before { get user_post_path(1,1) }
 
    it 'return show response status correct' do
      expect(response).to have_http_status(:ok)
    end

    it 'render "show" page' do
      expect(response).to render_template("show")
    end

    it 'includes text from show page' do
      expect(response.body).to include("<h1>Posts#show</h1>")
    end
  end
end
