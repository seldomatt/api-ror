module Api
	class UsersController < Api::BaseController

		def new
			@user = User.new
		end

		def index
			@users = User.all
		end

		def create
			@user = User.new(user_params)

			if @user.save
				flash[:notice] = "You have successfully sign up."
			else
				flash[:alert] = "Error: Try signing up again."
			end
				
			render new_api_user_path
		end

		private

			def user_params
				params.require(:user).permit(:name)
			end

			def query_params
				params.permit(:name)
			end

	end
end