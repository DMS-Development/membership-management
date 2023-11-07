class AttendancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_attendance

  def index
    @attendances = Attendance.all
    render json: @attendances.as_json(include: [:event])
  end
  def create
    @attendance = @event.attendances.new(user: current_user)
    if @attendance.save
      render json: @attendance, status: :created
    else
      render json: @attendance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = @event.attendances.find_by(params[:id])
    if @attendance.user == current_user
      @attendance.destroy
      render json: { message: 'Attendance was successfully canceled.' }, status: :ok
    else
      render json: @attendance.errors, status: :unprocessable_entity
    end
  end
end
