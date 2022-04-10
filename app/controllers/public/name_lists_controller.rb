class Public::NameListsController < ApplicationController


  def index
    @name_list = NameList.new
    @name_lists = NameList.all
  end


  def create
    @name_list = NameList.new(name_list_params)
    @name_list.user_id = current_user.id
    if @name_list.save
      redirect_to name_lists_path
      flash[:notice]='You have created book successfully'
    else
      @name_lists = NameList.all
      render :index
    end
  end


  private

  def name_list_params
    params.require(:name_list).permit(:name)
  end

end