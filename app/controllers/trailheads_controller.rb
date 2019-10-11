class TrailheadsController < ApplicationController
  def show
    @trailhead = Trailhead.find_by(id: params[:id])
  end
end
