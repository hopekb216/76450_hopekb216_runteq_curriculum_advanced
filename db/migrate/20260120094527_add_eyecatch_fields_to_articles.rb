class AddEyecatchFieldsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :eyecatch_width, :integer unless column_exists?(:articles, :eyecatch_width)
    add_column :articles, :eyecatch_alignment, :integer, default: 0 unless column_exists?(:articles, :eyecatch_alignment)
  end
end
