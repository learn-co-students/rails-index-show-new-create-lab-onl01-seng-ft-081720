class CouponsController < ApplicationController

    def create
        @coupon = Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        # binding.pry
        redirect_to coupon_path(@coupon)
    end

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def show
        @coupon = Coupon.find(params[:id])
    end
end