module ApplicationHelper
  def page_title(title = '')
    base_title = ' -こじらせ診断- '
    title.empty? ? base_title : title + base_title
  end

  def default_meta_tags
    {
      site: 'こじらせ診断',
      title: 'そこのあなた、こじらせてない？',
      reverse: true,
      charset: 'utf-8',
      description: 'ツイートからこじらせ度を診断するアプリ',
      keywords: 'こじらせ, 診断, メンヘラ, 女性, 婚活',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('top-girl.png') },
        { href: image_url('top-girl.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        locale: 'ja_JP'
      }
    }
  end
end
