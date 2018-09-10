class CajonsController < ApplicationController

 def index
  @cajons = Cajon.all

 end

 def new
 end

 def create
  @cajon = Cajon.new(params[:cajon])
  @cajon.save

  redirect_to cajon_path(@cajon)
 end


 def show
  @cajon = Cajon.find(params[:id].to_i)
 end

 def edit
  @cajon = Cajon.find(params[:id])
 end

 def update
  @cajon = Cajon.find(params[:id])
  @cajon.update(params[:cajon])

  redirect_to cajon_path(@cajon)
 end

 def destroy
  @cajons = Cajons.find(params[:id])
  @cajons.destroy

  redirect_to cajon_path
 end

 private

 def cajon_params
  params.require(:cajon).permit(:name, :price)
 end
end
