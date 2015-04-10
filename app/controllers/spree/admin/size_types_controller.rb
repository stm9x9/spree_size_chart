module Spree
  module Admin
    class SizeTypesController < ResourceController
      def index
        respond_with(collection) do |format|
          format.html
          format.json { render :json => json_data }
        end
      end

      private

      def permitted_resource_params
        params.require(:size_type).permit(:id, :name)
      end

    end
  end
end