class TradesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @trades = Trade.where(status: TradeStatus::OPEN).order(created_at: :desc)
  end

  def new
    @trade = Trade.new
  end

  def create
    @trade = Trade.new(trade_params)
    @trade.user = current_user

    if @trade.save
      turbo_stream
    else
      render :new, status: :unprocessable_entity
    end
  end

  def close
    @trade = Trade.find(params[:id])
    @trade.update({ status: TradeStatus::CLOSED })

    turbo_stream
  end

  private

  def trade_params
    params.require(:trade).permit(:have, :wanted, :place)
  end
end
