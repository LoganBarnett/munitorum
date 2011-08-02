class ArmylistsController < ApplicationController
  def index
    @armylists = Armylist.all
    respond_to do |format|
      format.html
      format.json { render :json => @armylists}
    end
  end
  
  def new
  end
  
  def edit
    @armylist = Armylist.find(params[:id])
  end
  
  def update
    @armylist = Armylist.find params[:id]
    
    if @armylist.update_attributes params[:armylist]
      redirect_to armylists_path
    end
  end
  
  def create
    if Armylist.create params[:armylist]
      redirect_to armylists_path
    else
      flash[:error] = 'Could not create the army list'
    end
  end
end
