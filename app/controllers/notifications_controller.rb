class NotificationsController < ApplicationController
  respond_to :json

  def index
    @notifications = Notification.updated_after(params[:from])
    respond_with @notifications
  end
end
