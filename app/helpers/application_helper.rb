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
      title: :full_title,          # :full_title とすると、サイトに表示される <title> と全く同じものを表示できる
      description: :description,   # 上に同じ
      url: request.url,
      image: 'https://example.com/hoge.png'
    }
  end

  def default_twitter_card
    {
      card: 'summary_large_image', # または summary
      site: '@hogehoge'            # twitter ID
    }
  end
end
