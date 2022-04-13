class Public::NameListsController < ApplicationController


  def index
    @name_list = NameList.new
    @name_lists = NameList.all

    # User.name_lists.each do |name_list|
      # url = "localhost:3000/present_lists?name_list_id${name_list.id}"
      # url === localhost:3000/present_lists?name_list_id=1
      # name_list.name
    # end
  end

  def create
    @name_list = NameList.new(name_list_params)
    @name_list.user_id = current_user.id
    if @name_list.save!
      redirect_to name_lists_path(current_user)
      flash[:notice]='You have created book successfully'
    else
      @name_lists = NameList.all
      render :index
    end
  end


  private

  def name_list_params
    params.require(:name_list).permit(:name,:name_list_id)
  end

end