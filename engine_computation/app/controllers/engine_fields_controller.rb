class EngineFieldsController < ApplicationController
  def index
    @engine_fields = EngineField.all
  end

  def show
    @engine_field = EngineField.find(params[:id])
  end

  def new
    @engine_field = EngineField.new
  end

  def create
    @engine_field = EngineField.new(params[:engine_field])
    if @engine_field.save
      redirect_to @engine_field, :notice => "Successfully created engine field."
    else
      render :action => 'new'
    end
  end

  def edit
    @engine_field = EngineField.find(params[:id])
  end

  def update
    @engine_field = EngineField.find(params[:id])
    if @engine_field.update_attributes(params[:engine_field])
      redirect_to @engine_field, :notice  => "Successfully updated engine field."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @engine_field = EngineField.find(params[:id])
    @engine_field.destroy
    redirect_to engine_fields_url, :notice => "Successfully destroyed engine field."
  end
end
