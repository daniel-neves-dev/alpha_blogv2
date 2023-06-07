class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :correct_user, only: %i[edit update destroy]

  def correct_user
    @article = correct_user.articles.find_by(id: params[:id])
    redirect_to articles_path, notice: 'Not authorized' if @article.nil?
  end
end
