class RoomsController < ApplicationController
  def index
    @messages = Message.all
  end
  def show
    @messages = Message.all
  end

  def delete
    Message.find(params[:id]).destroy
    @messages = Message.all
    render 'show'
  end
end
