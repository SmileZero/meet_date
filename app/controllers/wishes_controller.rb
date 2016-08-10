class WishesController < ApplicationController
  before_action :set_wish, only: [:update, :destroy]

  def create
    @wish = Wish.new wish_params
    if @wish.save
    else
    end
  end

  def update
  end

  def destroy
    @wish.destroy
  end

private
  def set_wish
    @wish = Wish.find params[:id]
  end

  def wish_params
    params.require(:wish).permit(:content)
  end
end
