class DosesController < ApplicationController

  def index
    @doses = Dose.all
  end

  def show
    @doses = Dose.find (params[:id])
  end

  def new
    @doses = Dose.new
  end

  def create
    @doses = Dose.new(dose.params)
    @doses.save
    redirect_to dose_path(@dose)
  end

  def edit
    @doses = Dose.find(params[:id])
  end

  def update
    @doses = Dose.find(params[:id])
    @doses.update(doses_params)
  end

  def destroy
    @doses = Dose.find(params[:id])
    @doses.destroy
    redirect_to doses_path
  end

  def doses_params
    params.require(:params).permit(:name)
  end
end
