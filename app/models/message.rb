class Message < ApplicationRecord
  belongs_to :user

  validates :body, presence: true

  # we write up the custom_display limit function to display a specfic number of messages when we load up our application.
  scope :custom_display, -> {order(:created_at).last(5)} # display only messages created in the last 20min
end
