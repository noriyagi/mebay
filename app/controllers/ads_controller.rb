class AdsController < ApplicationController
  before_filter :check_logged_in, :only => [:edit, :update, :destroy]

  def show
    @ad = Ad.find(params[:id])
  end

  def stats
    @seller = Seller.find(params[:id])
  end

  def index
    @ads = Ad.all
  end

  def new
    @ad = Ad.new
  end

  def create
    @ad = Ad.new(params[:ad])
    #@ad.save
    if @ad.save
    redirect_to "/ads/#{@ad.id}"
    else
      render :template => "ads/new"
    end
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def update
    @ad = Ad.find(params[:id])
    if @ad.update_attributes(params[:ad])
    redirect_to "/ads/#{@ad.id}"
    else
      render :template => "ads/edit"
    end
  end

  def destroy
    @ad = Ad.find(params[:id])
    @ad.destroy
    redirect_to "/ads/"
  end

private
  def check_logged_in
    authenticate_or_request_with_http_basic("Abs") do |username, password|
      username == "admin" && password == "keylove"
    end
  end

end
