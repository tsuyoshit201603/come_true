class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
    if Idea.create(idea_params)
      flash.now[:notice] = 'アイデアが保存されました！'
      redirect_to ideas_path
    end
  end

  def show
  end

  def destroy
  end

  private

  def idea_params
    params.require(:idea).permit(:name, :url, :text)
  end
end
