class Public::FriendsController < ApplicationController

  def index
    @friend = Friend.new
    @friends = Friend.where(user_id: current_user.id)
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user_id = current_user.id
    if @friend.save
      redirect_to friends_path(current_user)
      flash[:notice]='You have created friend successfully.'
    else
      @friends = Friend.all
      render :index
    end
  end


    private

    def friend_params
      params.require(:friend).permit(:name,:birthdate)
    end

end
