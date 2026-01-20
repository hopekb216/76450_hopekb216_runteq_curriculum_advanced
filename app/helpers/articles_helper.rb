module ArticlesHelper
  def eyecatch_align_class(article)
    case article.eyecatch_align
    when "left", 0
      "text-left"
    when "center", 1
      "text-center"
    when "right", 2
      "text-right"
    else
      ""
    end
  end
end
