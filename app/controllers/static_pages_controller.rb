class StaticPagesController < ApplicationController
  def home
    @articles = Article.all
    @media = Medium
  end
end
