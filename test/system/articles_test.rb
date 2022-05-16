require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_selector "h1", text: "Articles"
  end

  test "should create article" do
    visit articles_url
    click_on "New article"

    fill_in "Article access num", with: @article.article_access_num
    fill_in "Article", with: @article.article_id
    fill_in "Article image path", with: @article.article_image_path
    fill_in "Article title", with: @article.article_title
    fill_in "Article update datetime", with: @article.article_update_datetime
    fill_in "Article url", with: @article.article_url
    fill_in "Media", with: @article.media_id
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "should update Article" do
    visit article_url(@article)
    click_on "Edit this article", match: :first

    fill_in "Article access num", with: @article.article_access_num
    fill_in "Article", with: @article.article_id
    fill_in "Article image path", with: @article.article_image_path
    fill_in "Article title", with: @article.article_title
    fill_in "Article update datetime", with: @article.article_update_datetime
    fill_in "Article url", with: @article.article_url
    fill_in "Media", with: @article.media_id
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "should destroy Article" do
    visit article_url(@article)
    click_on "Destroy this article", match: :first

    assert_text "Article was successfully destroyed"
  end
end
