class RegulatoryFeesController < ApplicationController
  def index
    @regulatory_fees = RegulatoryFee.all
  end

  def show
    @regulatory_fee = RegulatoryFee.find(params[:id])
  end

  def new
    @regulatory_fee = RegulatoryFee.new
  end

  def create
    @regulatory_fee = RegulatoryFee.new(params[:regulatory_fee])
    if @regulatory_fee.save
      redirect_to @regulatory_fee, :notice => "Successfully created regulatory fee."
    else
      render :action => 'new'
    end
  end

  def edit
    @regulatory_fee = RegulatoryFee.find(params[:id])
  end

  def update
    @regulatory_fee = RegulatoryFee.find(params[:id])
    if @regulatory_fee.update_attributes(params[:regulatory_fee])
      redirect_to @regulatory_fee, :notice  => "Successfully updated regulatory fee."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @regulatory_fee = RegulatoryFee.find(params[:id])
    @regulatory_fee.destroy
    redirect_to regulatory_fees_url, :notice => "Successfully destroyed regulatory fee."
  end
end
