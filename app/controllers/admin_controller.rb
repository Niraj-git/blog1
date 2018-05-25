class AdminController < ApplicationController
  def index
    @posts = Post.where(status: 'pending')
  end

  def update_post_status    
    @post =  Post.find(params[:post_id]) 
    @post.status = "approved"
    @post.save
    redirect_to admin_index_path    
  end

  def disapprove_post
     @post =  Post.find(params[:post_id]) 
     @post.status = "dis-approved"
     @post.save
     redirect_to admin_index_path    
   end
end
