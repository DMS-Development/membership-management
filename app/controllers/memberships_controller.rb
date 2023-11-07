class MembershipsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_membership, only: [:edit, :update, :show, :destroy]
  def create
    @membership = Membership.new(membership_params)
    if @membership.save
      render json: @membership, status: :created
    else
      render json: @membership.errors, status: :unprocessable_entity
    end
  end


  def update
    if @membership.update(membership_params)
      render json: @membership, status: :ok
    else
      render json: @membership.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @membership.as_json(include: [:user, :membership_type])
  end

  def destroy
    @membership.destroy
    head :no_content
  end

  private
  def set_membership
    @membership = Membership.find(params[:id])
  end

  def membership_params
    params.require(:membership).permit(:user_id, :start_date, :end_date, :membership_type_id, :is_active)
  end
end
