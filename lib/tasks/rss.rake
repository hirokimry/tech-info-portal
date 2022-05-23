namespace :rss do
  task get_rss: [:environment] do
    Medium.all.each do |media|
      xml = HTTParty.get(media.rss_url).body
      content = Feedjira.parse xml
      content.entries.each do |article|
        local_article = media.articles.where(title: article.title).first_or_initialize
        local_article.update(url: article.url, publication_date: article.published)
      end
    end
  end
end
