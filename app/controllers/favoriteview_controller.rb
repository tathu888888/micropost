# class FavoriteviewController < ApplicationController
#   def index
    

#       @micropost = current_user.microposts.build
#       @microposts = current_user.likes.order(id: :desc).page(params[:page])
#   end
  
#   def likes
#     Micropost.where(id: self.fav_mpost_ids )
#   end
# end
