class MessagesController < ApplicationController

  def new 
    @messages = Message.all
  end
end