module ApplicationHelper
	def flash_class(type)
    { notice: 'info', alert: 'warning', error: 'danger' }[type.to_sym]
  end

  def title(page_title)
    content_for(:title) { page_title }
  end
end
