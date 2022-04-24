class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    @present_list = PresentList.find_by(scene: params[:scene])
    if @model == "Friend"
      @records = Friend.search_for(@content,@method)
    else
      @records = PresentList.search_for(@content,@method)
    end
  end


end
