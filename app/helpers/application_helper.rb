module ApplicationHelper
  def default_meta_tags
    {
      site: current_site.name,
      reverse: true,
      title: nil,
      description: current_site.description,
      canonical: request.original_url,
      og: {
        title: :title,
        type: 'website',
        url: request.original_url,
        image: current_site.og_image_url(:ogp),
        site_name: :site,
        description: :description,
        locale: 'ja_JP'
      }
    }
  end

  def flash_class(key)
    { alert: 'danger', notice: 'success' }.fetch(key.to_sym) { 'danger' }
  end

  def eyecatch_align_class(article)
    case article.eyecatch_align.to_s
    when 'left", '0'
      'text-left"
    when "center", '1'
      'text-center"
    when "right", '2'
      'text-right'
    else
      'text-left'
    end
  end
end
