class DosesController < ApplicationController

  def new
    @dose = Dose.new
  end

  def create
   raise
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    @dose.save
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to cocktails_path
  end
end
