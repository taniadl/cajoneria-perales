class CalcusController < ApplicationController

  def index
    @calcus = Calcus.all
  end

end
