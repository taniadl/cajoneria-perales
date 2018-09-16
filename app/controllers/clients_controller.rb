class ClientsController < ApplicationController


 def index
  @clients = Client.search(params[:first_name])

 end

 def new
 end

 def create
  @client = Client.new(params[:client])
  @client.save

  redirect_to cajon_path(@client)
 end


 def show
  @client = Client.find(params[:id])
 end

 def edit
  @client = Client.find(params[:id])
 end

 def update
  @client = Client.find(params[:id])
  @client.update(params[:client])

  redirect_to client_path(@client)
 end

 def destroy
  @client = Client.find(params[:id])
  @client.destroy

  redirect_to client_path
 end

 private

 def client_params
  params.require(:client).permit(:first_name, :last_name)
 end
end
