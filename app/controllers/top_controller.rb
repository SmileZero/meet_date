class TopController < ApplicationController
  def index
    @left_seconds = left_seconds
  end

private
  def left_seconds
    return -1 unless @appointment = Appointment.order(time: :desc).last
    (@appointment.time - Time.current).to_i
  end
end
