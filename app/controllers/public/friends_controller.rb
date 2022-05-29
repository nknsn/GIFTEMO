class Public::FriendsController < ApplicationController
  before_action :authenticate_user!

  def index
    @friend = Friend.new
    @friends = Friend.where(user_id: current_user.id) #ユーザーのfriends
  end


  def create
    @friend = Friend.new(friend_params)
    @friend.user_id = current_user.id
    if @friend.save
      redirect_to friends_path(current_user)
      flash[:notice]='おともだちを新しく追加しました！'
    else
      @friends = Friend.where(user_id: current_user.id)
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
      flash[:notice]='おともだち情報を更新しました！'
    else
      render :edit
    end
  end


  def destroy
    @friend = Friend.find(params[:id])
    if @friend.destroy
      redirect_to request.referer
      flash[:notice]='おともだちを削除しました！'
    else
      render :index
    end
  end



  private

  def friend_params
    params.require(:friend).permit(:name,:birthdate,:image)
  end

end
