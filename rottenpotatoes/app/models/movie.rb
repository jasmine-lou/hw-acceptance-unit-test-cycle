class Movie < ActiveRecord::Base
  def self.search_path(id)
    m = Movie.find_by(id: id)
    director = m.director
    if director.blank?
      return nil
    end
    return Movie.where(director: director)
  end
end
