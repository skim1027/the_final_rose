class ContestantsController < ApplicationController
  def show
    @cont = Contestant.find(params[:cont_id])
  end
end