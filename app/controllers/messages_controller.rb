class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])


    if @message.save
      flash[:notice] = "Mensagem enviada com sucesso"
      redirect_to :root
    else
      render :action => 'new'
    end


  end

  def index
    @messages = Message.all
  end
end
