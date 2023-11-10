class BachelorettesController < ApplicationController
  def show
    @bach = Bachelorette.find(params[:bach_id])
  end
end