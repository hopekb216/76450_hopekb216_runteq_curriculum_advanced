module Admin::ArticlesHelper
  def eyecatch_align_class(article)
    case article.eyecatch_align
    when "left"   then "left"
    when "center" then "center"
    when "right"  then "right"
    else "left"
    end
  end
end
