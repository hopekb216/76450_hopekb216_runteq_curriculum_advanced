def eyecatch_align_class(article)
  case article.eyecatch_align.to_s
  when 'left', '0'
    'text-left'
  when 'center', '1'
    'text-center'
  when 'right', '2'
    'text-right'
  else
    'text-left'
  end
end
