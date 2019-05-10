class RoomsController < ApplicationController
  def show
    @messages = Message.all
  end

  def delete
    Message.find(params[:id]).destroy
    @messages = Message.all
    render 'show'
  end
end
