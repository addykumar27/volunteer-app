class CausesController < ApplicationController
  def show
    cause_type = params[:cause]
    # find all tips for that genre
    @tips = Tip.where(genre: genre_type)
  end
end

