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
      flash[:notice]='おともだちを新しく追加しました！'
    else
      @friends = Friend.all
      render :index
    end
  end


  def edit
    @friend = Friend.find(params[:id])
  end


  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_params)
      redirect_to friends_path(current_user)
      flash[:notice]='更新しました！'
    else
      render :edit
    end
  end


  def destroy
    @friend = Friend.find(params[:id])
    @friend.destroy
    redirect_to request.referer
  end



  private

  def friend_params
    params.require(:friend).permit(:name,:birthdate,:image)
  end

end
