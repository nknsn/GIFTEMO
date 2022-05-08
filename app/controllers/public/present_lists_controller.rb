class Public::PresentListsController < ApplicationController

  before_action :authenticate_user!

  def index
    @present_list = PresentList.new
    @present_lists = current_user.present_lists.all
  end


  def create
    @present_list = current_user.present_lists.new(present_list_params)
    if params[:present_list][:category] == "give"
      @present_list.category = "give"
    else
      @present_list.category = "have"
    end

    if params[:present_list][:friend_number] == "2"
      birthdate = "#{present_list_params['birthdate(1i)']}-#{present_list_params['birthdate(2i)']}-#{present_list_params['birthdate(3i)']}"
      friend_new = current_user.friends.new(name: friend_params['name'], birthdate: birthdate)
      if friend_new.save
        @present_list.name = friend_new.name
        @present_list.birthdate = friend_new.birthdate
        @present_list.save
        redirect_to present_lists_path
        flash[:notice]='ギフトリストを追加しました！'
      else
        @present_lists = current_user.present_lists.all
        render :index
      end
    elsif params[:present_list][:friend_number] == "1"
      if Friend.exists?(id: params[:present_list][:friend_id])
        @friend = Friend.find(params[:present_list][:friend_id])
        @present_list.name = @friend.name
        @present_list.save
        redirect_to present_lists_path
        flash[:notice]='ギフトリストを追加しました！'
      else
        @present_lists = current_user.present_lists.all
        render :index
      end
    end
  end


  def edit
    @present_list = PresentList.find(params[:id])
  end


  def update
    @present_list = PresentList.find(params[:id])
    if @present_list.update(present_list_params)
      redirect_to present_lists_path(current_user)
      flash[:notice]='ギフトリストを更新しました！'
    else
      render :edit
    end
  end


  def destroy
    @present_list = PresentList.find(params[:id])
    if @present_list.destroy
      redirect_to request.referer
      flash[:notice]='ギフトリストを削除しました！'
    else
      render :index
    end
  end


  private

  def present_list_params
    params.require(:present_list).permit(:date,:item,:scene,:user_id,:name,:birthdate)
  end

  def friend_params
    params.require(:friend).permit(:name,:birthdate,:friend_id)
  end
end
