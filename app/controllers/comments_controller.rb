class CommentsController < ApplicationController
  before_action :set_movie
  before_action :set_comment, only: [:show, :edit, :delete]
  def index
    @comments = @movie.comments
  end

  def new
    @mvs = Movie.all
    @comment = @movie.comments.new
  end

  def create
    @comment = @movie.comments.new(comment_params)
    if @comment.save
      redirect_to @comment
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def delete
    @movie.comments.destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end
end
