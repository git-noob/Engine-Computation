class BneTablesController < ApplicationController
  def index
    @bne_tables = BneTable.all
  end

  def show
    @bne_table = BneTable.find(params[:id])
  end

  def new
    @bne_table = BneTable.new
  end

  def create
    @bne_table = BneTable.new(params[:bne_table])
    if @bne_table.save
      redirect_to @bne_table, :notice => "Successfully created bne table."
    else
      render :action => 'new'
    end
  end

  def edit
    @bne_table = BneTable.find(params[:id])
  end

  def update
    @bne_table = BneTable.find(params[:id])
    if @bne_table.update_attributes(params[:bne_table])
      redirect_to @bne_table, :notice  => "Successfully updated bne table."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @bne_table = BneTable.find(params[:id])
    @bne_table.destroy
    redirect_to bne_tables_url, :notice => "Successfully destroyed bne table."
  end
end
