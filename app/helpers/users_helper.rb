module UsersHelper
	def add_button(param)
    if param == 'sesler'
      link_to "+", new_sound_path, class: "btn btn-light"
    elsif param == 'yorumlar'
      ""
    elsif param == 'siparişler'
      ""
    end
  end

  def render?(param)
    if param == 'sesler'
      render 'users/sound', object: @data
    elsif param == 'yorumlar'
      render 'users/comment', object: @data
    elsif param == 'siparişler'
      render 'users/order', object: @data
    end
  end
end
