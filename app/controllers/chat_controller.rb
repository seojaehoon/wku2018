class ChatController < ApplicationController
  def index
  end

  def new
  end
  
  def create
    Chat.create(is_man: true, content: params[:content])
    dic = Dictionary.where(ask: params[:content]).sample
    if dic.nil?
      redirect_to '/chat/new'
    else
     Chat.create(is_man: false, content: dic.answer)
    #reder text: params[:content]
    redirect_to '/chat/index'
    end
  end
  
  def learn
    Dictionary.create(ask: params[:ask], answer: params[:answer])
    #render text: params[:ask]
    redirect_to '/chat/index'
  end
end
