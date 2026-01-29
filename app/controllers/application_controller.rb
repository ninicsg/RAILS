class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :valida_usuario, except: [:login, :logar]

  def valida_usuario
    @usuario_logado = Usuario.find_by_nome(cookies.signed[:login_agenda])
    redirect_to root_path unless @usuario_logado
  end
end
