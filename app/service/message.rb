class Message 
    attr_accessor :id
    attr_accessor :title
    attr_accessor :content
    attr_accessor :tags
    def initialize(id: 0, title:"",content:cotent,tags:[])
        @id = id
        @title = title
        @content = content
        @tags = tags.clone
    end
end