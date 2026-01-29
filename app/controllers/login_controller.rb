class LoginController < ApplicationController
    def login

    end

    def logar
        @usuario = Usuario.find_by_nome(params[:login])
        if @usuario.present? && ( @usuario.senha == params[:senha])
            cookies.signed[:login_agenda] = @usuario.nome
            redirect_to usuarios_path
        else
            redirect_to root_path
        end
    end
end