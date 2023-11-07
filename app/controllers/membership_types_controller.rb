class MembershipTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_membership_type, only: [:edit, :update, :destroy]
  def index
    @membership_types = MembershipType.all
  end

  def create
    @membership_type = MembershipType.new(membership_type_params)
    if @membership_type.save
      render json: @membership_type, status: :created
    else
      render json: @membership_type.errors, status: :unprocessable_entity
    end
  end

  def update
    if @membership_type.update(membership_type_params)
      render json: @membership_type, status: :ok
    else
      render json: @membership_type.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @membership_type.destroy
    head :no_content
  end

  private

  def set_membership_type
    @membership_type = MembershipType.find(params[:id])
  end

  def membership_type_params
    params.require(:membership_type).permit(:name, :description, :price, :duration, :is_auto_renew)
  end
end
