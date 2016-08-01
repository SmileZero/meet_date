class TopController < ApplicationController
  def index
    @days = left_days
  end

private
  def left_days
    return -1 unless @appointment = Appointment.order(time: :desc).last
    hours = (@appointment.time - Time.current) / Global.time.seconds_per_hour
    days  = hours / 24
    days.to_i
  end
end
