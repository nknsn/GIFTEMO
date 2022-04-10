class Public::PresentListsController < ApplicationController

  def index
    @present_list = PresentList.new
    @present_list = PresentList.all
  end


  def create
    @present_list = PresentList.new(present_list_params)
    @present_list.save
    redirect_to present_lists_path
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
