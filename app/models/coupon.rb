class Coupon < ActiveRecord::Base
    def each_coupon
        "#{self.coupon_code} @ #{self.store}"
    end
end 