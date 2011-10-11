class DirectTablesController < ApplicationController
  def index
    @direct_tables = DirectTable.all
  end

  def show
    @direct_table = DirectTable.find(params[:id])
  end

  def new
    @direct_table = DirectTable.new
  end

  def create
    @direct_table = DirectTable.new(params[:direct_table])
    if @direct_table.save
      redirect_to @direct_table, :notice => "Successfully created direct table."
    else
      render :action => 'new'
    end
  end

  def edit
    @direct_table = DirectTable.find(params[:id])
  end

  def update
    @direct_table = DirectTable.find(params[:id])
    if @direct_table.update_attributes(params[:direct_table])
      redirect_to @direct_table, :notice  => "Successfully updated direct table."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @direct_table = DirectTable.find(params[:id])
    @direct_table.destroy
    redirect_to direct_tables_url, :notice => "Successfully destroyed direct table."
  end
end
