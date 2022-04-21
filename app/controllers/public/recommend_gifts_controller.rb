class Public::RecommendGiftsController < ApplicationController

  def index
    if params[:status] == "eye"
      @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :genreId => '216539')
    elsif params[:status] == "lip"
      @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :genreId => '216600')
    elsif params[:status] == "nail"
      @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :genreId => '304766')
    elsif params[:status] == "hair"
      @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :genreId => '210686')
    else params[:status] == "body"
      @items = RakutenWebService::Ichiba::Item.search(:keyword => '化粧品', :genreId => '216671')
    end

    # if params[:keyword]
    #   @items = RakutenWebService::Ichiba::Item.search(:keyword => '', :genreId => '565598')
    # end
  end
end
