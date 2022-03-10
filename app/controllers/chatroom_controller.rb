class ChatroomController < ApplicationController

  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.custom_display # Here we dont want to display all messages in the database. we create custom_display function to loadup specfic number of messages. This will make program fast and memory efficient
  end

end