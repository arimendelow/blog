class ArticlesController < ApplicationController

	# HTTP authentication, except for the index and show pages
	http_basic_authenticate_with name: "ari", password "password", except: [:index, :show]

	# Generally, put actions in the controller in the following order:
		# - index
		# - show
		# - new
		# - edit
		# - create
		# - update
		# - destroy

	def index
		@articles = Article.all
	end

	def show
		# Use an instance variable (prefixed with @) to hold a reference to the article object.
		# We do this because Rails will pass all instance variables to the view.
		@article = Article.find(params[:id])
	end

	def new
		@article = Article.new
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		# Initialize the article model with its respective attributes
		@article = Article.new(article_params) # 'article' is the model, 'Article' is the class

		if @article.save # Returns a boolean indicating whether the article was saved
			redirect_to @article
		else
			# Use 'render' here instead of 'redirect_to' so that the @article object is passed back to the new template when it is rendered.
			# 'render' is done within the same request as the form submission, 'redirect_to' issues another request
			render 'new'
		end
	end

	def update
		@article = Article.find(params[:id])

		if @article.update(article_params)
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])	# Find the article
		@article.destroy						# Destroy it
		redirect_to articles_path				# Redirect back to the list of articles
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
