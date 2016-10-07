class TopController < ApplicationController
  def index
    @left_seconds = left_seconds
    @wish = Wish.new
  end

private
  def left_seconds
    return -1 unless @appointment = Appointment.available.order(:time).first
    (@appointment.time - Time.current).to_i
  end
end
