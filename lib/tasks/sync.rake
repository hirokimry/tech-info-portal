namespace :sync do
  task feeds: [:environment] do
    Feed.all.each do |feed|
      xml= HTTParty.get(feed.url).body
      content = Feedjira.parse xml
      content.entries.each do |article|
        local_article = feed.articles.where(article_title: article.title).first_or_initialize
        local_article.update(article_url: article.url, article_update_datetime: article.published)
      end
    end
  end
end
