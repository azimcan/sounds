module UsersHelper
	def add_button(param)
    if param == 'sesler'
      link_to "+", new_sound_path, class: "btn btn-light"
    elsif param == 'yorumlar'
      ""
    end
  end

  def render?(param)
    if param == 'sesler'
      render 'users/sound', object: @data
    elsif param == 'yorumlar'
      render 'users/comment', object: @data
    end
  end
end
