class ContestantOutingsController < ApplicationController
  def destroy
    out = Outing.find(params[:outing_id])
    cont = Contestant.find(params[:contestant])
    ContestantOuting.find_by(contestant: cont, outing: out).destroy
    redirect_to out_show_path(out)
  end
end