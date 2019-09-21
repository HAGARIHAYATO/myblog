module ApplicationHelper
  def default_meta_tags
    {
      site: 'HAGALOG',
      title: 'HAGALOG',
      reverse: true,
      charset: 'utf-8',
      description: '元自衛官　葉狩勇人のブログです。　javascript, React, Rails等について投稿します。',
      separator: '|',
      keywords: 'programming',
      canonical: request.original_url,
      og: defalut_og,
      twitter: default_twitter_card
    }
  end

  private

  def defalut_og
    {
      title: :full_title,
      description: :description,
      url: request.url,
      image: 'star.png'
    }
  end

  def default_twitter_card
    {
      card: 'summary_large_image',
      site: '@HAGARI06'
    }
  end
end
