module Api
  module MyFavorites
    class NovelsController < ApplicationController
      inherit_resources
      respond_to :json
      def index
        respond_with @novels = current_admin.novels.page(params[:page]).per_page(5)
      end

      private
      def build_resource_params
        [params.require(:novel).permit!]
      end
      def begin_of_association_chain
        current_admin
      end
    end
  end
end