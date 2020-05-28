module TeamHelper
  def default_img(image)
    image.presence || 'default.jpg'
  end

  def team_owner?(team)
    current_user == team.owner
  end
end
