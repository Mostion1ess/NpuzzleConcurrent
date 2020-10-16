
require './lib/base'
require './lib/api'

class CoinsController < ApplicationController
  before_action :set_coin, only: %i[ show edit update destroy mostrar]
  before_action :set_mining_types_option, only: %i[ new edit update create]

  # GET /coins or /coins.json
  def index
    @coins = Coin.all

    # coin_value

    respond_to do |format|
      format.html
      format.js
    end

    if params[:acronym]
      acronym = params[:acronym]
      coin = Coin.find_by(acronym: acronym)
      api = Api::Base.new
      value = api.request(:get, "https://api.coinbase.com/v2/prices/#{acronym.downcase}-usd/spot")
      coin.value = value
      coin.save
    end

    api = Api::Base.new
    @a = api.request(:get, "https://api.coinbase.com/v2/prices/btc-usd/spot")
  end

  # GET /coins/1 or /coins/1.json
  def show
  end

  def mostrar
  end



  # GET /coins/new
  def new
    @coin = Coin.new
  end

  # GET /coins/1/edit
  def edit
  end

  # POST /coins or /coins.json
  def create
    @coin = Coin.new(coin_params)

    respond_to do |format|
      if @coin.save
        format.html { redirect_to @coin, notice: "Coin was successfully created." }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coins/1 or /coins/1.json
  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to @coin, notice: "Coin was successfully updated." }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coins/1 or /coins/1.json
  def destroy
    @coin.destroy
    respond_to do |format|
      format.html { redirect_to coins_url, notice: "Coin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
    end

    def set_mining_types_option
      @mining_types_option = MiningType.all.pluck(:description, :id)
    end

    # Only allow a list of trusted parameters through.
    def coin_params
      params.require(:coin).permit(:description, :acronym, :url_image, :mining_type_id)
    end

    def coin_value

    end
end