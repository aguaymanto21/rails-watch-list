class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end


  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to bookmark_path(@bookmark)
  end


  def new
    @bookmarkk = Bookmark.new
  end


  def show
    @task = Task.find(params[:id])
  end



  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to bookmarks_path, status: :see_other
  end


  private
  def bookmark_params
    params.require(:bookmark).permit(:title, :details)
  end

end
