class PatronusController < ApplicationController

  def show
    @patronu = Patronu.find(params[:id])
  end




end
