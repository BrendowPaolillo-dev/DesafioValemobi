class LoginController < ApplicationController

  # GET /logins
  # GET /logins.json
  def index
  end


  def create
    vendedor = Vendedor.find_by_login(params[:login])
    if vendedor && vendedor.authenticate(params[:password])
      session[:vendedor_id] = vendedor.id
      redirect_to mercadorias_path
    else
      flash.now[:error] = ["Login ou senha incorretos, tente novamente."]
      render :index
    end
  end



  # DELETE /logins/1
  # DELETE /logins/1.json
  def destroy
      session[:vendedor_id] = nil
      session.delete(:vendedor_id)
      session.clear
      redirect_to login_path
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.require(:vendedor).permit(:login, :password)
    end
end
