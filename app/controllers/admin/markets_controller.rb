class Admin::MarketsController < ApplicationController

  before_filter :authenticate_user!
  authorize_resource
  before_filter :body_class
  
  # GET /admin/markets
  # GET /admin/markets.json
  def index
    @markets = Market.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @markets }
    end
  end

  # GET /admin/markets/1
  # GET /admin/markets/1.json
  def show
    @market = Market.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @market }
    end
  end

  # GET /admin/markets/new
  # GET /admin/markets/new.json
  def new
    @market = Market.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @market }
    end
  end

  # GET /admin/markets/1/edit
  def edit
    @market = Market.find(params[:id])
  end

  # POST /admin/markets
  # POST /admin/markets.json
  def create
    @market = Market.new(params[:market])

    respond_to do |format|
      if @market.save
        format.html { redirect_to admin_markets_url, notice: 'Market was successfully created.' }
        format.json { render json: @market, status: :created, location: @market }
      else
        format.html { render action: "new" }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/markets/1
  # PUT /admin/markets/1.json
  def update
    @market = Market.find(params[:id])

    respond_to do |format|
      if @market.update_attributes(params[:market])
        format.html { redirect_to @market, notice: 'Market was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @market.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/markets/1
  # DELETE /admin/markets/1.json
  def destroy
    @market = Market.find(params[:id])
    @market.destroy

    respond_to do |format|
      format.html { redirect_to admin_markets_url }
      format.json { head :ok }
    end
  end

  private
  
  def body_class
    @body_class = ""
  end
  
end
