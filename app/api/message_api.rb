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

    desc "response message list"
    params do
      requires :id
    end
    route_param :id do
      get do
         Message.new(title: "yamada", content: "game")
      end
    end
  end
  

end


