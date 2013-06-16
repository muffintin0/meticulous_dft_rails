class Jaguar::GsfcsController < ApplicationController
  respond_to :json
  
  def index 
    #@gsfc_jobs = Jaguar::Gsfc.all
    respond_with Jaguar::Gsfc.all
  end
  
  def show 
    unique_name = params[:id]
    #@gsfc_job = Jaguar::Gsfc.find_by_unique_name(unique_name)
    respond_with Jaguar::Gsfc.find_by_unique_name(unique_name)
  end
end