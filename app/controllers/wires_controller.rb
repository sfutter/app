class WiresController < ApplicationController
  def new
  	@wire = Wire.new
  end

  def create
  	@wire = Wire.new(params[:post].permit(:title, :time))

  	@wire.save
  	redirect_to @wire
  end

  def show
  	@wire = Wire.find(params[:id])
  end

  def index
  	@wires = Wire.all
  end

end
