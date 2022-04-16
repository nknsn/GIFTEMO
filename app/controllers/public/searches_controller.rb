# class Public::SearchesController < ApplicationController
#   before_action :authenticate_user!
  
#   def search
#     @model = params[:model]
#     @content = params[:content]
#     @method = params[:method]
#     if @model == "friend"
#       @records = Friend.search_for(@content,@method)
#     else
#       @records = PresentList.search_for(@content,@method)
#     end
#   end

# end
