class MoonsController < ApplicationController
  def index
  	@moons = Moon.all
  end

  def show
  	@moon = Moon.find(params[:id])
  end

  def new
  	@moon = Moon.new
  end

  def create
  	@moon = Moon.new(moon_params)
  	if @moon.save
  		redirect_to planet_moon_path
  	else
  		render :new
  	end
  end

  def edit
  	@moon = Moon.find(params[:id])
  end

  def update
  	@moon = Moon.find(params[:id])
  	if @moon.update(moon_params)
  		redirect_to planet_moon_path(@moon)
  	else
  		render :edit
  	end
  end

  def destroy
  	@moon = Moon.find(params[:id])
  	@moon.destroy
  	redirect_to planet_moons_path
  end

  private
  	def moon_params
  		params.require(:moon).permit(:name, )
  		
  	end
end
