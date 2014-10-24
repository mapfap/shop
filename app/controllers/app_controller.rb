class AppController < ApplicationController
  before_action :authenticate_member!, only: [:user_profile]
end
