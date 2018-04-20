class Api::V2::ArticlesController < ApplicationController
  before_action :set_api_v2_article, only: [:show, :update, :destroy]

  # GET /api/v2/articles
  def index
    @api_v2_articles = Api::V2::Article.all
    render json: Api::V2::ArticleSerializer.new(@api_v2_articles).serialized_json
  end

  # GET /api/v2/articles/1
  def show
    render json: Api::V2::ArticleSerializer.new(@api_v2_article).serialized_json
  end

  # POST /api/v2/articles
  def create
    @api_v2_article = Api::V2::Article.new(api_v2_article_params)

    if @api_v2_article.save
      render json: Api::V2::ArticleSerializer.new(@api_v2_article).serialized_json, status: :created #, location: @api_v2_article
    else
      render json: @api_v2_article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v2/articles/1
  def update
    if @api_v2_article.update(api_v2_article_params)
      render json: Api::V2::ArticleSerializer.new(@api_v2_article).serialized_json
    else
      render json: @api_v2_article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v2/articles/1
  def destroy
    @api_v2_article.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v2_article
      @api_v2_article = Api::V2::Article.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v2_article_params
      #params.require(:api_v2_article).permit(:title, :body)
      params.permit(:title, :body)
    end
end
