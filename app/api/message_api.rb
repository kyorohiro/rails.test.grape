class MessageAPI < Grape::API

  prefix "api"
  version 'v1', :using => :path
  format :json
    
  resource "messages" do
    desc "response message list"
    get do
      [ Message.new(id: 1, title: "yamada", content: "game"),
        Message.new(id: 2, title: "yamada", content: "game")]
    end

    desc "response message list"
    params do
      requires :id, type: Integer
    end
    route_param :id do
      get do
         Message.new(id: params[:id], title: "yamada", content: "game")
      end
    end
    
    desc "post message"
    params do
      requires :title, type: String
      requires :content, type: String
    end
    post do
      Message.new(id: 3, title: "#{params[:title]}:", content: "#{params[:content]}")
    end
    
    desc "update message"
    params do
      requires :id, type: Integer
    end
    route_param :id do
      put do
        Message.new(id: params[:id], title: "yamada", content: "game #{params[:id]}")
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
    
    desc "complex request"
    params do
      requires :xxx, type: Hash do
        requires :messages,type: Array[JSON] do
          requires :content
          requires :title
        end
      end
    end
    post "complex" do
      params[:xxx][:messages]
    end
  end
  

end


