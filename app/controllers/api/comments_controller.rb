module Api
	class CommentsController < ApplicationController

		def index
			@comments = Comment.all
		end

		def show
			@comment = Comment.find(params[:id])
			if @comment.nil?
				render status: :no_content
			end
		end

		def create
			@comment = Comment.new(comment_params)

			if @comment.save
				render :show, status: :created, location: api_comment_url(@comment)
			else
				render json: @comment.errors, status: :unprocessable_entity
			end
		end

		def update
			@comment = Comment.find(params[:id])
			if @comment.update(comment_params)
				render :show, status: :ok, location: api_comment_url(@comment)
			else
				render json: @comment.errors, status: :unprocessable_entity
			end
		end

		def destroy
			@comment = Comment.find(params[:id])
			@comment.destroy
			head :no_content
		end

		private
			def comment_params
				params.require(:comment).permit(:body, :user_id, :blogPost_id)
			end
		
	end
end