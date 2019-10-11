class HikesController < ApplicationController
  def index
    @hikes = Hike.all
  end

  def show
    @hike = Hike.find_by(id: params[:id])

    if @hike.nil?
      redirect_to :head
      return
    end
  end

end
