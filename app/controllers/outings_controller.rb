class OutingsController < ApplicationController
  def show
    @out = Outing.find(params[:outing_id])
  end
end