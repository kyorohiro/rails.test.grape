require "rails_helper"

RSpec.describe "GET /api/v1/messages/x", :type => :request do
  context "normal state" do
    before do
       get "/api/v1/messages/1"
    end
  
    it "return 200ok" do
      expect(response.status).to eq 200
    end
  
    it "get message list" do
      #@expected = {
      #    :id => 1,
      #    :title =>"yamada",
      #    :content => "game 1",
      #    :tags=>[]
      #}.to_json
      # expect(response.body).to eq @expected
      responseBody = JSON.parse(response.body)
      expect(responseBody["id"]).to eq 1
      expect(responseBody["title"]).to eq "yamada"
      expect(responseBody["content"]).to eq "game"
      expect(responseBody["tags"]).to eq []
    end
  end

  context "error state" do
    before do
       get "/api/v1/messages/N"
    end
  
    it "return 200ok" do
      expect(response.status).to eq 400
    end

  end
end


RSpec.describe "POST /api/v1/messages", :type => :request do
  context "normal state" do
    before do
       #@params = { :title => "xxx", :content => "yyy"}
       post "/api/v1/messages", params: { :title => "xxx", :content => "yyy"} #@params
    end
  
    it "return 200ok" do
      p response.body
      expect(response.status).to eq 201
    end
  end
end
