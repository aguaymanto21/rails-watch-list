class ListsController < ApplicationController

  def show
    @bookmark = Bookmark.find(params[:id])
  end
  
end
