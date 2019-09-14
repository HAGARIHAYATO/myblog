module ApplicationHelper
	def default_meta_tags
    {
      site: 'Myblog',
      title: 'Blog88to',
      reverse: true,
      charset: 'utf-8',
      description: '元自衛官　葉狩勇人のブログです。　javascript, React, Rails等について投稿します。',
      keywords: 'programming',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site, # もしくは site_name: :site
        title: :title, # もしくは title: :title
        description: :description, # もしくは description: :description
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '@Hagari06',
      }
    }
  end
end
