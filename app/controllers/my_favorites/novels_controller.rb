module MyFavorites
  class NovelsController < ApplicationController
    inherit_resources
    respond_to :json

    private
    def build_resource_params
      [params.require(:novel).permit!]
    end
    def begin_of_association_chain
      current_admin
    end
  end
end
