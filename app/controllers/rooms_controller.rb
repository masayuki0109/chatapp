class RoomsController < ApplicationController
  def show
    @messages = Message.all
  end

  def delete
    @message = Message.find(params[:id])
    @message.delete
    @messages = Message.all
    render 'show'
  end
end
