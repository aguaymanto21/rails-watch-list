class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
  end

  def create
    @bookmark = @list.bookmark.new(bookmark_params)
    @bookmark.save
    redirect_to list_path(@list)
  end

  def new
    @bookmark = Bookmark.new
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def destroy
    # @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path (@bookmark.list), status: :see_other
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:title, :details)
  end

end
