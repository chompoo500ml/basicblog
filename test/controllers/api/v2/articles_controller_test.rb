require 'test_helper'

class Api::V2::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v2_article = api_v2_articles(:one)
  end

  test "should get index" do
    get api_v2_articles_url, as: :json
    assert_response :success
  end

  test "should create api_v2_article" do
    assert_difference('Api::V2::Article.count') do
      post api_v2_articles_url, params: { api_v2_article: { body: @api_v2_article.body, title: @api_v2_article.title } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v2_article" do
    get api_v2_article_url(@api_v2_article), as: :json
    assert_response :success
  end

  test "should update api_v2_article" do
    patch api_v2_article_url(@api_v2_article), params: { api_v2_article: { body: @api_v2_article.body, title: @api_v2_article.title } }, as: :json
    assert_response 200
  end

  test "should destroy api_v2_article" do
    assert_difference('Api::V2::Article.count', -1) do
      delete api_v2_article_url(@api_v2_article), as: :json
    end

    assert_response 204
  end
end
