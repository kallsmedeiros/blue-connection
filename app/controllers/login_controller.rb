# frozen_string_literal: true

class LoginController < ApplicationController
  require 'digest/md5'

  def index
    @user = User.new
  end

  def index_do
    form     = params[:user]
    senha    = Digest::MD5.hexdigest((form[:password]).to_s)
    user = User.find_by(email: form[:email], password: senha)
    if !user.nil? && (!user.status.eql? 'pending')
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash[:error] = if user.nil?
                        'Usuario Não cadastrado'
                      else
                        'Usuario Não tem Acesso'
                      end
      redirect_to login_index_path
    end
  end

  def logout
    reset_session
    redirect_to login_index_path
  end
end
