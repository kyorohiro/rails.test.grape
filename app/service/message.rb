class Message 
    attr_accessor :title
    attr_accessor :content
    attr_accessor :tags
    def initialize(title:"",content:cotent,tags:[])
        @title = title
        @content = content
        @tags = tags.clone
    end
end