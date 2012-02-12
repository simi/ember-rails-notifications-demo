class NotificationsController < ApplicationController
  respond_to :json

  def index
    @notifications = Notification.from(params[:from])
    respond_with @notifications
  end
end
