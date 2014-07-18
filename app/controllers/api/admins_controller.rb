module Api
  class AdminsController < ::ApplicationController
    respond_to :json

    def return_admin
      @admin = current_admin
    end

    def upload_avatar
      @admin = UploadAvatar.new(current_admin, params[:files].first).call 
    end

    def update
      current_admin.update(params_admin)
      @admin = current_admin
    end

    protected
    def params_admin
      params.require(:admin).permit(:name)
    end

    def admin_params
      devise_parameter_sanitizer.sanitize(:account_update)
    end
  end
end
