class StaticPagesController < ApplicationController
  def home
    @microposts = Micropost.order('created_at DESC').paginate(:page => params[:page])
    @top_five = Micropost.where(updated_at: 72.hours.ago..DateTime.now).order('created_at DESC').first(5)
  end

  def help
  end
  
  def about
  end

end
