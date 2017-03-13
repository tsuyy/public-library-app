class LibraryUsersController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:library_id])

      if @library.member?(current_user)
        flash[:notice] = "Already joined this library."
      else
        @library.users.push(current_user)
      end

    redirect_to current_user
  end

end
