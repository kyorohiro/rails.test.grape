class MessageAPI < Grape::API

  prefix "api"
  version 'v1', :using => :path
  format :json
    
  resource "messages" do
    desc "response message list"
    get do
      [ Message.new(title: "yamada", content: "game"),
        Message.new(title: "yamada", content: "game")]
    end

    desc "response message list"
    params do
      requires :id
    end
    route_param :id do
      get do
         Message.new(title: "yamada", content: "game #{params[:id]}")
      end
    end
    
    desc "post message"
    params do
      requires :title
      requires :content
    end
    post do
      Message.new(title: "#{params[:title]}:", content: "#{params[:content]}")
    end
    
    desc "update message"
    params do
      requires :id
    end
    route_param :id do
      put do
        Message.new(title: "yamada", content: "game #{params[:id]}")
      end
    end
    
    desc "delete message"
    params do
      requires :id
    end
    route_param :id do
      delete do
         Message.new(title: "yamada", content: "game #{params[:id]}")
      end
    end
  end
  

end


