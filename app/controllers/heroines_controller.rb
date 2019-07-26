class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @powers = Power.where(name:params[:id])


  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)
    @powers = Power.all
    if @heroine.save
       redirect_to heroines_path
    else 
       render :new
    end
  end




  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end


  
end
