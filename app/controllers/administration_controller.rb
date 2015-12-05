class AdministrationController < ApplicationController
  before_action :ensure_user_is_admin

  def index
  end

  private

  def ensure_user_is_admin
    redirect_to root_path unless current_user && current_user.has_role?(:admin)
  end

end
