class CajonesController < ApplicationController

 CAJONES = {
  1=> {name: 'huayco', price: '1,5'},
  2=> {name: 'fresa', price: '1'},
  3=> {name: 'papaya', price: '0.3'},
  4=> {name: 'cuadrada', price: '0.8'},
  5=> {name: 'pepinera', price: '0.5'}
}

 def index
  @category = params[:nombre_cajon]
  @cajones = CAJONES.select {|id, type| type[:name] == @category}

 end

 def create
  render plain: "add to DB '#{params[:name]}' with price '#{params[:price]}"
 end

 def show
  @cajon = CAJONES[params[:id].to_i]
 end
end
