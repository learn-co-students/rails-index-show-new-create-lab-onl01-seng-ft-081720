class Coupon < ActiveRecord::Base
    
    def show_dem_shits
        "#{self.coupon_code} @ #{self.store}"
    end
end