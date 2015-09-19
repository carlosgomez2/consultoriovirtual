class StartController < ApplicationController
  before_action :authenticate_user!
  def index
  	render layout: "start"
  end
end
