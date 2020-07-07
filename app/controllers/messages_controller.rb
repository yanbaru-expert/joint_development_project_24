class MessagesController < ApplicationController

    def new
         @message = Message.new
    end

    def create
        @message = Message.create(message_params)
    end

    def index
        @messages = Message.all
    end

    def show
        @message = Message.find(params[:id])
    end

    def edit
        @message = Message.find(params[:id])
    end
    private

    def message_params
        params.require(:message).permit(:title, :content)
    end

end
