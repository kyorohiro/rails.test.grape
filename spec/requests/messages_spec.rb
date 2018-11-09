require "rails_helper"

RSpec.describe "Widget management", :type => :request do
  it "does not render a different template" do
    get "/api/v1/messages/1"
    @expected = {
        :title =>"yamada",
        :content => "game 1",
        :tags=>[]
    }.to_json
    #p response
    expect(response.body).to eq @expected
  end
end