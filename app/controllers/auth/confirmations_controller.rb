class Auth::ConfirmationsController < Auth::BaseController

  def new
    if params[:token].present?
      confirm_and_redirect_user(params[:token])
    else
      # 
    end
  end

  def create
    confirm_and_redirect_user(params[:token])
  end

private
  def confirm_and_redirect_user(token)
    @user = User.where(confirmation_token: params[:token]).first
    @user.confirmed_at = DateTime.now
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      # 
    end
  end

end
