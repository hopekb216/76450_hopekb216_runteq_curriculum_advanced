class RemoveEyecatchAlignFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :eyecatch_align, :integer
  end
end
