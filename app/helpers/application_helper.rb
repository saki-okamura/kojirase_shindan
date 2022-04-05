module ApplicationHelper

  def page_title(title='')
    base_title = ' -こじらせ診断- '
    title.empty? ? base_title : title + base_title
  end
end
