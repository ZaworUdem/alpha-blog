class ArticlesController < ApplicationController

    def new
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def index
        @articles = Article.all
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            flash[:notice] = "Article was succesfully updated"
            redirect_to article_path(@article)
        else
            render :edit
        end

    end

    def create
        @article = Article.new(article_params)
       # @article.save
       # redirect_to article_path(@aricle)

       if @article.save
            flash[:notice] = "Article was succesfully created"
            redirect_to article_path(@article)
       else
            render :new
       end
    end

    def show
        @article = Article.find(params[:id])
    end

    private

    def article_params
        params.require(:article).permit(:title, :description)
    end

end