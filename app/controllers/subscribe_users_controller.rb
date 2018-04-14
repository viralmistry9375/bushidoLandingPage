class SubscribeUsersController < ApplicationController

  def create
    build_subscribe_user
    respond_to do |format|
      format.json { render json: { is_success: @subscribe_user.save! } }
    end
  end

  private

    def subscribe_user_params
      params.fetch(:subscribe_user, {})
            .permit(:first_name, :last_name, :email)
    end

    def build_subscribe_user
      @subscribe_user ||= subscribe_user_scope
      @subscribe_user.attributes = subscribe_user_params
    end

    def subscribe_user_scope
      @subscribe_user = SubscribeUser.new
    end

end
