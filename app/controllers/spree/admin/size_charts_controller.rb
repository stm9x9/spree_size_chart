module Spree
  module Admin
    class SizeChartsController < ResourceController
      belongs_to 'spree/product', :find_by => :slug

      def edit
      end

      def update
        if @size_chart.update_attributes permitted_resource_params
          flash[:notice] = 'Size Chart successfully updated'
        else
        end
        redirect_to edit_admin_product_size_chart_path(parent)
      end

      def collection_url
        admin_product_size_chart_url(parent)
      end

      def load_resource_instance
        @size_chart ||= parent.size_chart || parent.build_size_chart
      end


      private

      def permitted_resource_params
        params.require(:size_chart).permit(:id, :name, :product_id, :option_type_id, :unit, :prototype_id, size_type_ids:[])
      end
    end
  end
end