class Hike < ApplicationRecord
  belongs_to :trailhead

  def best_adjacent_hike
    adjacent_hikes = Hike.where(trailhead_id: self.trailhead_id)
    adj_hikes_ord_by_rating = adjacent_hikes.order(rating: :desc)

    if adj_hikes_ord_by_rating.first.name != self.name
      return adj_hikes_ord_by_rating.first
    else
      return adj_hikes_ord_by_rating[1]
    end




  end
end
