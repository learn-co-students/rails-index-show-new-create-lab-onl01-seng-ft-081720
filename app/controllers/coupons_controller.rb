class CouponsController < ApplicationController

    def create
        @coupon = Coupon.new
        @coupon.coupon_code = params[:coupon][:coupon_code]
        @coupon.store = params[:coupon][:store]
        if @coupon.save
            redirect_to coupon_path(@coupon)
        else
            render coupons_path
        end
    end

    def index
        @coupons = Coupon.all
    end

    def new
    end

    def show
        @coupon = Coupon.find_by_id(params[:id])
    end
end