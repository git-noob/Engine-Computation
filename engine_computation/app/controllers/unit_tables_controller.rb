class UnitTablesController < ApplicationController
  def index
    @unit_tables = UnitTable.all
  end

  def show
    @unit_table = UnitTable.find(params[:id])
  end

  def new
    @unit_table = UnitTable.new
  end

  def create
    @unit_table = UnitTable.new(params[:unit_table])
    if @unit_table.save
      redirect_to @unit_table, :notice => "Successfully created unit table."
    else
      render :action => 'new'
    end
  end

  def edit
    @unit_table = UnitTable.find(params[:id])
  end

  def update
    @unit_table = UnitTable.find(params[:id])
    if @unit_table.update_attributes(params[:unit_table])
      redirect_to @unit_table, :notice  => "Successfully updated unit table."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @unit_table = UnitTable.find(params[:id])
    @unit_table.destroy
    redirect_to unit_tables_url, :notice => "Successfully destroyed unit table."
  end
end
