class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
end

def show
    @coupon = Coupon.find_by_id(params[:id])
end

def new
end

def create
    params.permit!
    @coupon = Coupon.create(params[:coupon])
    redirect_to coupon_path(@coupon)
end
end