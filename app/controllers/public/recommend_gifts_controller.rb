class Public::RecommendGiftsController < ApplicationController

  def index
    @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :tagId => '1011756', :page => '2')
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(:keyword => '', :genreId => '565598')
    end
  end
end
