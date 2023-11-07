require "application_responder"

class ApplicationController < ActionController::API
  self.responder = ApplicationResponder
  respond_to :html

  include ActionController::MimeResponds
  respond_to :json
  before_action :authenticate_user!
end
