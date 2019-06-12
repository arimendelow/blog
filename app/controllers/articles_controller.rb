class ArticlesController < ApplicationController

	# Generally, put actions in the controller in the following order:
		# - index
		# - show
		# - new
		# - edit
		# - create
		# - update
		# - destroy

	def new
	end

	def create
		# Initialize the article model with its respective attributes
		@article = Article.new(article_params) # 'article' is the model, 'Article' is the class

		@article.save # Returns a boolean indicating whether the article was saved
		redirect_to @article
	end

	private # Make sure that it can't be called outside of its intended context
		def article_params
			# Attributes are automatically mapped to the respective database columns
			#  - remember, 'params[:article]' contains the attributes we're interested in
			#  - Because of the strong parameters requirement, we need to require and permit the parameters that we need
			#	- See here for more info: https://weblog.rubyonrails.org/2012/3/21/strong-parameters/
			params.require(:article).permit(:title, :text)
		end
end
