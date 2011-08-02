class ArmylistsController < ApplicationController
  def index
    @armylists = current_user.armylists
    respond_to do |format|
      format.html
      format.json { render :json => @armylists}
    end
  end
  
  def new
  end
  
  def edit
    @armylist = current_user.armylists.find(params[:id])
  end
  
  def update
    @armylist = current_user.armylists.find params[:id]
    
    if @armylist.update_attributes params[:armylist]
      redirect_to armylists_path
    end
  end
  
  def create
    if current_user.armylists.create params[:armylist]
      redirect_to armylists_path
    else
      flash[:error] = 'Could not create the army list'
    end
  end
end
