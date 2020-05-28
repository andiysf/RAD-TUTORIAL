class MicropostsController < ApplicationController
    
    def new
        if logged_in?
            @micropost = current_user.micropost.new
        else
            redirect_to login_path
        end
    end

    def show
    end

    def destroy
    end

    

    def create
        @micropost = current_user.microposts.build(micropost_params)
        if @micropost.save
            flash[:success] = "Micropost created!"
            redirect_to root_path
        else
            render 'new'
        end
    end

    private
        def micropost_params
            params.require(:micropost).permit(:title, :content, :topic)
        end
end
