class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: %i[index show home about]
end
