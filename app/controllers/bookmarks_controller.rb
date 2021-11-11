class BookmarksController < ApplicationController

  def new
    @list.find(params[list_id])
    @bookmark = Bookmark.new
  end

  def create
    @list.find(params[list_id])
    @bookmark = Bookmark.new
    if @bookmark.save
      redirect_to list_path
    else
      render :new
    end
    @bookmark = Bookmark.new
  end
end
