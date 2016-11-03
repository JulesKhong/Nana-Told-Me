module ApplicationHelper

  def random_flower
    image_number = rand(14)
    "#{image_number}.jpg"
  end
end
