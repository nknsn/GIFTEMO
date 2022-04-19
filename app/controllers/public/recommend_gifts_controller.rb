class Public::RecommendGiftsController < ApplicationController

  def index
    @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :tagId => '1013154')
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(:keyword => 'お茶', :genreId => '565598')
      byebug
    end
  end
end
