class ArticlesController < ApplicationController
   
    def index
        @articles = Article.all
      end
      
    def new 
      @article = Article.new
    end

    def create
      @article = Article.new
      @article =  params[:article][:title]
      @article.save
      redirect_to article_path(@article)

    end
    
end
