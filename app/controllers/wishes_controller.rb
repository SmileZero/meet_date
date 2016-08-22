class WishesController < ApplicationController
  before_action :set_wish, only: [:edit, :update, :destroy]

  def new
    @wish = Wish.new
  end

  def create
    @wish = Wish.new wish_params
    if @wish.save
    else
      render "error.js.erb"
    end
  end

  def edit
    render "new"
  end

  def update
    if @wish.update wish_params
      @wish = Wish.new
    else
      render "error.js.erb"
    end
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
