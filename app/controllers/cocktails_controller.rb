class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all

  def show
    @cocktails = Cocktail.find (params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.new(cocktail.params)
    @cocktails.saveredirect_to cocktail_path(@cocktail)
  end

  def edit
    @cocktails = Cocktail.find(params[:id])
  end

  def update
    @cocktails = Cocktail.find(params[:id])
    @doses.update(doses_params)
  end

  def destroy
  @cocktails = Cocktail.find(params[:id])
    @cocktails.destroy
    redirect_to doses_path
  end
end
