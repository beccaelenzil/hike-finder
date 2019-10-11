class AddTrailheadIdToHikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :hikes, :trailhead, foreign_key: true
  end
end
