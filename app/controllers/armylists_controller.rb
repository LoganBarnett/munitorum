class ArmylistsController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json { render :json => Armylist.all}
    end
  end
  
  def new
  end
  
  def create
    if Armylist.create params[:armylist]
      redirect_to armylists_path
    else
      flash[:error] = 'Could not create the army list'
    end
  end
end
