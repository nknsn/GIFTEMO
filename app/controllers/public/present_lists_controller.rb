class Public::PresentListsController < ApplicationController


  def index
    name_list_id = params[:name_list_id] # (1)
    present_lists = PresentList.where(name_list_id: name_list_id)
    # @name_list = NameList.find(params[:id])
    # @present_lists = PresentList.where(name_list: @name_list)

    @present_list = PresentList.new
    @present_lists = PresentList.all
  end


  def create
    # @name_list = NameList.find(params[:id])
    @present_list = PresentList.new
    name_list_id = params[:name_list_id]
    # @present_list = PresentList.new(params[:present_list][:name_list_id])
    @present_list.save
    redirect_to present_lists_path(name_list_id)
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


  # private

  # def present_list_params
  #   params.require(:present_list).permit(:date,:product_name,:scene)
  # end

  # def name_list_params
  #   params.repuire(:name_list).permit(:name,:name_list_id)
  # end

end
