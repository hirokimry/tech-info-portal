namespace :rss do
  task get_rss: [:environment] do
    Medium.all.each do |media|
      xml = HTTParty.get(media.media_top_url).body
      content = Feedjira.parse xml
      content.entries.each do |article|
        local_article = media.articles.where(article_title: article.title).first_or_initialize
        local_article.update(article_url: article.url, article_update_datetime: article.published)
      end
    end
  end
end
