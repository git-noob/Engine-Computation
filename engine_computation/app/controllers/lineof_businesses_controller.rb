class LineofBusinessesController < ApplicationController
  def index
    @lineof_businesses = LineofBusiness.all
  end

  def show
    @lineof_business = LineofBusiness.find(params[:id])
  end

  def new
    @lineof_business = LineofBusiness.new
  end

  def create
    @lineof_business = LineofBusiness.new(params[:lineof_business])
    if @lineof_business.save
      redirect_to @lineof_business, :notice => "Successfully created lineof business."
    else
      render :action => 'new'
    end
  end

  def edit
    @lineof_business = LineofBusiness.find(params[:id])
  end

  def update
    @lineof_business = LineofBusiness.find(params[:id])
    if @lineof_business.update_attributes(params[:lineof_business])
      redirect_to @lineof_business, :notice  => "Successfully updated lineof business."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @lineof_business = LineofBusiness.find(params[:id])
    @lineof_business.destroy
    redirect_to lineof_businesses_url, :notice => "Successfully destroyed lineof business."
  end
end
