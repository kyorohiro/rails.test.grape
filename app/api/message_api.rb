class MessageAPI < Grape::API

  prefix "api"
  version 'v1', :using => :path
  format :json
    
  resource "messages" do
    desc "response message list"
    get do
      l = [
        Message.new(title: "yamada", content: "game"),
        Message.new(title: "yamada", content: "game")]
    end
  end
end


