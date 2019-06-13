class CommentsController < ApplicationController
	# Generally, put actions in the controller in the following order:
	# - index
	# - show
	# - new
	# - edit
	# - create
	# - update
	# - destroy

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		redirect_to article_path(@article)
	end

	private
		def comment_params
			params.require(:comment).permit(:commenter, :body)
		end

end
