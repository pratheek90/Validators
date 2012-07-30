class AdsController < ApplicationController

 def new
    @ad = Ad.new
  end
  
  def create
    @ad = Ad.new(params[:ad])
    if @ad.save
      redirect_to @ad
    else
      render "new"
    end
  end

  def show
    @ad = Ad.find(params[:id])
  end
end
