class BookmarksController < ApplicationController

  #before_action :set_bookmark, only: [:show]

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
    @movies = Movie.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list), status: :see_other
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end


  # private

  # def set_bookmark
  #   @bookmark = Bookmark.find(params[:id])
  # end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

end
