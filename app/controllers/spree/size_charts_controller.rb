module Spree
  class SizeChartsController < Spree::StoreController
    before_filter :load_product, :only => [:show]
    rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    def show

    end

    private

    def load_product
      @product = Spree::Product.friendly.find(params[:product_id])
    end

  end
end