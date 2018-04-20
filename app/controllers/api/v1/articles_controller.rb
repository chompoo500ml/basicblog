class Api::V1::ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.all
    render json: ArticleSerializer.new(@articles).serialized_json
  end

  # GET /articles/1
  def show
    render json: ArticleSerializer.new(@article).serialized_json
  end

  # POST /articles
  def create
    @article = Article.new(article_params)

    if @article.save
      render json: ArticleSerializer.new(@article).serialized_json, status: :created, location: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      render json: ArticleSerializer.new(@article).serialized_json
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
