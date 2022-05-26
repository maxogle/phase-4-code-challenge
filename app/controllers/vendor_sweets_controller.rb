class VendorsweetsController < ApplicationController
    def create
        vendor_sweet = VendorSweet.create(vendor_sweet_params)
        if vendor_sweet.valid?
            rendor json: vendor_sweet
        else
            render json: {error: "vaildation errors"}, status: 422
        end
    end

    def destroy
        vendor_sweet = VendorSweet.find_by(id: params[:id])
        if vendor_sweet
            vendor_sweet.destory
            render json: {}
        else
            render json: {error: "VendorSweet not found"}, status: 404
    end


    private 

    def vendor_sweet_params
        params.permit [:vendor_id, :sweet_id, :price]
    end
end
