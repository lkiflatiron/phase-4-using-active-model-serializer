class MovieSerializer < ActiveModel::Serializer
  attributes :title, :year, :length, :director, :description, 
  :poster_url, :category, :discount, :female_director

  def summary
    "#{self.object.title} - #{self.object.description[0..40]}..."
  end
end
