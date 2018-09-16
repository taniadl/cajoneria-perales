class PaginasController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def contacto
  end

  def acerca
  end

  def home
  end

  def update_price
  end
end
