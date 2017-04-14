class Auth::ConfirmationsController < Auth::BaseController

  def new
    confirm_and_or_redirect_user(params[:token]) if params[:token].present?
  end

private
  def confirm_and_or_redirect_user(token)
    user = User.where(confirmation_token: params[:token]).first
    user.confirmed_at = DateTime.now
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      # 
    end
  end

end
