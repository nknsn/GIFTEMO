class Public::PresentListsController < ApplicationController


  def index
    @present_list = PresentList.new
    # @friend_new = current_user.friend.new
    @present_lists = current_user.present_lists.all
  end


  def create
    # byebug
    @present_list = current_user.present_lists.new(present_list_params)
    if params[:present_list][:friend_number] == "2"
      friend_new = current_user.friends.new(friend_params)
      if friend_new.save
        @present_list.name = friend_new.name
        @present_list.birthdate = friend_new.birthdate
        redirect_to present_lists_path
      else
        render :index
      end
    elsif params[:present_list][:friend_number] == "1"
      if Friend.exists?(id: params[:present_list][:friend_id])
        @friend = Friend.find(params[:present_list][:friend_id])
        @present_list.name = @friend.name
        @present_list.save
        redirect_to present_lists_path
      else
        render :index
      end
    end
  end



  # def edit
  #   @present_list = Paserent_list.find(params[:id])
  # end

  # def update
  # end

  # def destroy
  #   @present_list = PresentList.find(params[:id])
  #   @present_list.destroy
  #   redirect_to request.referer
  # end


  private

  def present_list_params
    params.require(:present_list).permit(:date,:item,:scene,:user_id,:name,:birthdate)
  end

  def friend_params
    params.repuire(:friend).permit(:name,:birthdate,:friend_id)
  end


end
