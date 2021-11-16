require 'rails_helper'

describe "Animals", type: :request do
  describe "post /create" do
    it "returns http success" do
      post "/animals"
      expect(response).to have_http_status(:success)
    end
  end

end
