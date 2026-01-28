class UsuariosController < ApplicationController

    def index
        @usuarios = Usuario.order(:id, :nome)
    end

    def show
       #binding.pry
       @usuario = Usuario.find_by_id(params[:id])
       #binding.pry
    end

    def new
        @usuario = Usuario.new
        @usuarios = Usuario.order(:nome)
    end

    def create
        @usuario = Usuario.new(params[:usuario])
        if @usuario.save
            redirect_to usuarios_path
        else
            render 'new'
        end
    end

    def edit
        @usuario = Usuario.find_by_id(params[:id])
    end

    def update
        @usuario = Usuario.find_by_id(params[:id])
        if @usuario.update_attributes(params[:usuario])
            redirect_to @usuario
        else
            render 'edit'
        end

    end

    def destroy
        @usuario = Usuario.find_by_id(params[:id])
        @usuario.destroy
        redirect_to usuarios_path
    end

    def usuario_contatos
        @usuario = Usuario.find_by_id(params[:id])
        @contatos = @usuario.contatos
    end

end